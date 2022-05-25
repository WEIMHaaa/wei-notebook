### 简介
实现 Pipeline 功能的脚本语言叫做 Jenkinsfile，由 Groovy 语言实现。Jenkinsfile 一般是放在项目根目录，随项目一起受源代码管理软件控制，无需像创建"自由风格\"项目一样，每次可能需要拷贝很多设置到新项目，提供了一些直接的好处：
- Pipeline 上的代码审查/迭代
- Pipeline 的审计跟踪
- Pipeline 的唯一真实来源，可以由项目的多个成员查看和编辑  
Pipeline 支持：Declarative（在 Pipeline 2.5 中引入）和 Scripted Pipeline 两种格式。两者都支持建立 Pipeline，两者都可以用于在 Web UI 中定义一个流水线 Jenkinsfile，将 Jenkinsfile 文件创建并检查到源代码控制库中通常被认为是最佳做法。

### 教程
1. JenkinsPipeline语法概要：https://mp.weixin.qq.com/s/iaNlN01KLgljMSScx-Z4SA
2. Jenkins Pipeline 环境变量使用指南:https://mp.weixin.qq.com/s/359q18BOjVtlzHpTLqpTiQ


### 踩坑
1. pipeline首次构建无法拉取git分支，需要直接构建，直接构建之后才能拉取git分支。  