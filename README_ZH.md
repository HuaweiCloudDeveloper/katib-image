

 <h1 align="center">Katib自动化机器学习平台</h1>
   <p align="center">
     <a href="README.md"><strong>English</strong></a> | <strong>简体中文</strong>
   </p>


   ## 目录

   - [仓库简介](#项目介绍)
   - [前置条件](#前置条件)
   - [镜像说明](#镜像说明)
   - [获取帮助](#获取帮助)
   - [如何贡献](#如何贡献)

   ## 项目介绍

   [Katib](https://github.com/kubeflow/katib) 是基于Kubernetes的开源自动化机器学习平台，助力高效优化机器学习模型，支持超参数调优、神经架构搜索等，通过UI界面，能够创建、监控和分析多种实验。本商品基于鲲鹏服务器的Huawei Cloud EulerOS 2.0 64bit系统，提供开箱即用的Katib。

   ## 核心特性

   - **面向 Kubernetes 的自动化超参数调优：** 支持多种优化算法（如贝叶斯优化、随机搜索、遗传算法），自动搜索最优超参数组合，最大化模型性能指标，提升调参效率与模型质量
   - **端到端 AutoML 工作流支持：** 提供完整的自动化机器学习能力，涵盖超参数调优、神经网络架构搜索（NAS）和自动模型评估，无缝集成在 Kubernetes 环境中，适用于大规模分布式训练场景

   本项目提供的开源镜像商品 [Katib自动化机器学习平台](https://marketplace.huaweicloud.com/hidden/contents/3a074167-a9ef-4a8f-a2f9-9de9a7aa255c#productid=OFFI1154254888928055296) 已预先安装0.17.0版本的Katib及其相关运行环境，并提供部署模板。快来参照使用指南，轻松开启“开箱即用”的高效体验吧。

   > **系统要求如下：**
   >
   > - CPU: 4vCPUs 或更高
   > - RAM: 16GB 或更大
   > - Disk: 至少 40GB

   ## 前置条件

   [注册华为账号并开通华为云](https://support.huaweicloud.com/usermanual-account/account_id_001.html)

   ## 镜像说明

   | 镜像规格                                                     | 特性说明                                                 | 备注 |
   | ------------------------------------------------------------ | -------------------------------------------------------- | ---- |
   | [Katib-0.17.0-kunpeng](https://github.com/HuaweiCloudDeveloper/katib-image/tree/Katib-0.17.0-kunpeng) | 基于鲲鹏服务器 + Huawei Cloud EulerOS 2.0 64bit 安装部署 |      |

   ## 获取帮助

   - 更多问题可通过 [issue](https://github.com/HuaweiCloudDeveloper/katib-image/issues) 或 华为云云商店指定商品的服务支持 与我们取得联系
   - 其他开源镜像可看 [open-source-image-repos](https://github.com/HuaweiCloudDeveloper/open-source-image-repos)

   ## 如何贡献

   - Fork 此存储库并提交合并请求
   - 基于您的开源镜像信息同步更新 README.md
