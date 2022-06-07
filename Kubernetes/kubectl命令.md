[TOC]

---

[k8s官方文档](http://docs.kubernetes.org.cn/)


### 一、kubectl基本命令
1. kubectl --help //查看帮助
2. kubectl version //查看版本
3. kubectl version --short=true //查看版本(简单)
4. kubectl api-versions //查看api版本
5. kubectl cluster-info //查看集群状态


### 二、config相关命令
1. kubectl config view //查看配置(kubectl配置位于~/.kube/config)
2. kubectl config get-contexts //查看下有哪些集群上下文
3. kubectl config current-context //获取当前context
4. kubectl config use-context <集群名称> //切换集群


### 三、namespace相关命令
使用Namespace(命名空间)创建多个虚拟集群。
1. kubectl get namespace //查看namespace
2. kubectl get all -n <命名空间> //查看某个namespace下的所有组件运行情况
3. kubectl create namespace demo-namespace //创建namespace
4. kubectl create -f demo-namespace.yaml  //通过文件创建namespace
```
   apiVersion: v1
   kind: Namespace
   metadata:
   name: new-namespace
```
5. kubectl delete namespaces new-namespace //删除namespace
6. kubectl config set-context $(kubectl config current-context) --namespace=test-ns //切换到test-ns


### 四、node相关命令
Node是Kubernetes中的工作节点，最开始被称为minion。一个Node可以是VM或物理机。每个Node（节点）具有运行pod的一些必要服务，并由Master组件进行管理，Node节点上的服务包括Docker、kubelet和kube-proxy。
1. kubectl get node //查看node
2. kubectl get node -o wide //查看node详细信息
3. kubectl get node --show-labels //查看node标签
4. kubectl describe node //查看node描述


### 五、pod相关命令
Pod是Kubernetes创建或部署的最小/最简单的基本单位，一个Pod代表集群上正在运行的一个进程。
1. kubectl get pod //查看所有pod
2. kubectl get pod -o wide //查看所有pod详细信息
3. kubectl get pod --all-namespaces  //查看所有namespace下的pod
4. kubectl get pod --show-labels //查看标签
5. kubectl get pod -n <命名空间> //指定namespace查看pod, 默认default, default下面可能无pod, 以下操作都需要执行namespace
6. kubectl get pod <pod名称> -n <namespace名称> -o yaml | kubectl replace --force -f - //重启pod
7. kubectl logs <pod名称> -f //实时打印容器中日志信息
8. kubectl logs <pod名称> -f --tail=20 //实时打印容器中最新20条日志信息
9. kubectl logs <pod名称> -c <容器名称> //-c pod中有多个容器时使用
10. kubectl exec -it <pod名称> /bin/bash //进入pod
11. kubectl exec <pod名称> date //在pod中执行命令
12. kubectl describe pod <pod名称> //查看pod的详细状态
13. kubectl top pod --all-namespaces //查看资源的cpu，内存磁盘等资源的使用率
