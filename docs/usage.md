# Katib自动化机器学习平台使用指南



# 一、商品链接



[Katib自动化机器学习平台](https://marketplace.huaweicloud.com/hidden/contents/3a074167-a9ef-4a8f-a2f9-9de9a7aa255c#productid=OFFI1154254888928055296)

# 二、商品说明



Katib是基于Kubernetes的开源自动化机器学习平台，助力高效优化机器学习模型，支持超参数调优、神经架构搜索等，通过UI界面，能够创建、监控和分析多种实验。本商品通过鲲鹏服务器+EulerOS2.0进行安装部署

# 三、商品购买



您可以在云商店搜索 **Katib自动化机器学习平台**。

其中，地域、规格、推荐配置使用默认，购买方式根据您的需求选择按需/按月/按年，短期使用推荐按需，长期使用推荐按月/按年，确认配置后点击“立即购买”。

## 3.1 使用 RFS 模板直接部署



![img.png](images/img1.png) 
必填项填写后，点击 下一步
![img.png](images/img2.png)
![img.png](images/img3.png)
创建直接计划后，点击 确定
![img.png](images/img4.png)
![img.png](images/img5.png)
点击部署，执行计划
![img.png](images/img6.png)
如下图“Apply required resource success. ”即为资源创建完成
![img.png](images/img7.png)

# 3.2ECS 控制台配置



### 准备工作



在使用ECS控制台配置前，需要您提前配置好 **安全组规则**。

> **安全组规则的配置如下：**
>
> - 入方向规则放通端口8080、6443，必须包含这些端口才能正常访问使用
> - 入方向规则放通 CloudShell 连接实例使用的端口 `22`，以便在控制台登录调试
> - 出方向规则一键放通

### 创建ECS



前提工作准备好后，选择 ECS 控制台配置跳转到[购买ECS](https://support.huaweicloud.com/qs-ecs/ecs_01_0103.html) 页面，ECS 资源的配置如下图所示：

选择CPU架构 
![img.png](images/img8.png)
选择服务器规格 ![img.png](images/img9.png)
选择镜像 ![img.png](images/img10.png)
其他参数根据实际请客进行填写，填写完成之后，点击立即购买即可 
![img.png](images/img11.png)

> **值得注意的是：**
>
> - VPC 您可以自行创建
> - 安全组选择 [**准备工作**](#准备工作) 中配置的安全组；
> - 弹性公网IP选择现在购买，推荐选择“按流量计费”，带宽大小可设置为5Mbit/s；
> - 高级配置需要在高级选项支持注入自定义数据，所以登录凭证不能选择“密码”，选择创建后设置；
> - 其余默认或按规则填写即可。

# 商品使用



## Katib使用

```
conda activate katib

cd /home/katib

bash katib.sh
```

使用http://ip+8080/katib就能打开网页

![img](images/img_1.png)


之后就能够在对应的空间下创建实验

![img](images/img_2.png) 

实验进行需要一些时间，之后就能获得训练日志和训练结果。

![img](images/img_3.png) 


### 参考文档



[Katib官方文档](https://github.com/kubeflow/katib)
