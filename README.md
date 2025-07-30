


<h1 align="center">Katib Automated Machine Learning Platform</h1>
<p align="center">
    <strong>English</strong> | <a href="README_ZH.md">简体中文</a>
</p>





## Table of Contents

- [Repository Introduction](#project-introduction)
- [Prerequisites](#prerequisites)
- [Image Description](#image-description)
- [Get Help](#get-help)
- [How to Contribute](#how-to-contribute)

## Project Introduction



[Katib](https://github.com/kubeflow/katib)  is an open-source automated machine learning platform based on Kubernetes, which helps optimize machine learning models efficiently, supports hyperparameter tuning, neural architecture search, etc. Through the UI interface, it can create, monitor, and analyze various experiments.This product provides an out-of-the-box Katib based on the Huawei Cloud EulerOS 2.0 64-bit system of Kunpeng servers.

## Core Features

- **Automated hyperparameter tuning for Kubernetes:** Support multiple optimization algorithms (such as Bayesian optimization, random search, genetic algorithm), automatically search for the optimal combination of hyperparameters, maximize model performance indicators, and improve tuning efficiency and model quality
- **End to end AutoML workflow support:** Provide complete automated machine learning capabilities, covering hyperparameter tuning, neural network architecture search (NAS), and automatic model evaluation, seamlessly integrated into Kubernetes environments, suitable for large-scale distributed training scenarios

The open-source image product [Katib Automated Machine Learning Platform](https://marketplace.huaweicloud.com/intl/hidden/contents/4cad657d-46c2-4433-90f7-7faeefaa363a) provided by this project has pre-installed the the 0.17.0 version of Katib and its related runtime environment, and provides deployment templates. Come and refer to the usage guide to easily start an efficient "out-of-the-box" experience!

> **System requirements are as follows:**
>
> - CPU: 4vCPUs or higher
> - RAM: 16GB or larger
> - Disk: At least 40GB

## Prerequisites



[Register a Huawei account and activate Huawei Cloud](https://support.huaweicloud.com/usermanual-account/account_id_001.html)

## Image Description



| Image Specification                                          | Feature Description                                          | Remarks |
| ------------------------------------------------------------ | ------------------------------------------------------------ | ------- |
| [Katib-0.17.0-kunpeng](https://github.com/HuaweiCloudDeveloper/katib-image/tree/Katib-0.17.0-kunpeng) | Installed and deployed based on Kunpeng servers + Huawei Cloud EulerOS 2.0 64-bit |         |

## Get Help

- For more questions, you can contact us through [issues](https://github.com/HuaweiCloudDeveloper/katib-image/issues) or the service support of the specified product in the Huawei Cloud Marketplace.
- For other open-source images, please refer to [open-source-image-repos](https://github.com/HuaweiCloudDeveloper/open-source-image-repos).

## How to Contribute

- Fork this repository and submit a merge request.
- Synchronously update README.md based on your open-source image information.
