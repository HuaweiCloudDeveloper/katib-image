\#!/bin/bash

set -e

 

NAMESPACE="kubeflow"

UI_PORT=8080

LOG_FILE="/var/log/katib-start-ui.log"


exec > >(tee -a "$LOG_FILE") 2>&1

echo "$(date) Katib..."

 

\# 

echo "..."

command -v docker >/dev/null 2>&1 || { echo " Docker Docker"; exit 1; }

command -v minikube >/dev/null 2>&1 || { echo " Minikube Minikube"; exit 1; }

command -v kubectl >/dev/null 2>&1 || { echo " kubectl kubectl"; exit 1; }

command -v conda >/dev/null 2>&1 || { echo " Conda Conda"; exit 1; }

 

\# Step 1: IP

echo " IP..."

HOST_IP=$(ip addr | grep -oP '(?<=inet\s)\d+(\.\d+){3}' | grep -v "127.0.0.1" | head -n 1 || echo "127.0.0.1")

SUBNET=$(echo $HOST_IP | sed 's/\.[0-9]*$/.0\/16/')

GATEWAY=$(echo $HOST_IP | sed 's/\.[0-9]*$/.1/')

echo " IP: $HOST_IP"

echo " $SUBNET  $GATEWAY"

 

\# Step 2: Conda 

echo " Conda 'katib'..."

CONDA_BASE="/root/miniconda3"

if [ ! -f "$CONDA_BASE/etc/profile.d/conda.sh" ]; then

  echo " Conda $CONDA_BASE/etc/profile.d/conda.sh"

  echo " Conda: /root/miniconda3/bin/conda init bash"

  exit 1

fi

export PATH="$CONDA_BASE/bin:$PATH"

source "$CONDA_BASE/etc/profile.d/conda.sh" || { echo " $CONDA_BASE/etc/profile.d/conda.sh"; exit 1; }

conda activate katib || { echo " Conda 'katib' /root/miniconda3/bin/conda create -n katib python=3.9"; exit 1; }

 

\# Step 3: 

echo " /home/katib..."

sudo minikube delete || true

sudo rm -rf /root/.minikube /root/.kube

 

\# Step 4: Minikube

echo " Minikube..."

sudo minikube start --kubernetes-version=v1.25.0 --driver=none --image-mirror-country=cn --image-repository=registry.cn-hangzhou.aliyuncs.com/google_containers || { echo " Minikube"; exit 1; }

sleep 10

 

\# Step 5: Minikube 

echo " Minikube..."

sudo minikube status || { echo " Minikube "; exit 1; }

 

\# kubectl

 

ls -l /root/.minikube

sudo minikube config view

sudo chmod 600 /root/.kube/config

cat /root/.kube/config

 

minikube kubectl -- get nodes

kubectl apply -k "/home/katib/manifests/v1beta1/installs/katib-standalone"

sleep 10

kubectl get pods -n kubeflow

 

\# Step 8: Check and deploy Katib components

echo " Katib "

kubectl get pods -n $NAMESPACE -l app=katib-controller || { echo " katib-controller"; exit 1; }

kubectl get pods -n $NAMESPACE -l app=katib-db-manager || { echo " katib-db-manager"; exit 1; }

kubectl get pods -n $NAMESPACE -l app=katib-mysql || { echo " katib-mysql"; exit 1; }

kubectl get pods -n $NAMESPACE -l app=katib-ui || { echo " katib-ui"; exit 1; }

\#kubectl get pods -n $NAMESPACE -l app=katib-suggestion-random || { echo " random suggestion "; kubectl apply -k /home/katib/manifests/v1beta1/components/suggestion/random -n $NAMESPACE; sleep 10; }

 

\# Step 9: Verify katib-ui service

echo " katib-ui "

kubectl get svc -n $NAMESPACE katib-ui || { echo " katib-ui"; exit 1; }

 

\# Step 10: Start Katib UI

echo " Katib UI..."

\# Kill any existing port-forward processes to avoid conflicts

pkill -f "kubectl port-forward.*katib-ui.*$UI_PORT" || true

kubectl port-forward --address 0.0.0.0 svc/katib-ui -n $NAMESPACE $UI_PORT:80 &

sleep 5

echo "Katib UI $UI_PORT"
