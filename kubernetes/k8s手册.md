### 一、kubectl基本命令
1. kubectl --help //查看帮助
2. kubectl version //查看版本
3. kubectl api-versions //查看api版本
4. kubectl get pods //查看所有pods
5. kubectl get pods -o wide //查看所有的pods更详细些
6. kubectl exec -it <pod名称> sh //进入pod
7. kubectl get namespace //查看namespace
8. kubectl get pods --all-namespaces  //查看所有namespace
9. kubectl get nodes //查看所有nodes
10. kubectl get nodes -o wide //查看所有nodes更详细些
11. kubectl get nodes --show-labels //查看节点
12. kubectl top nodes //查看资源使用情况
13. kubectl get all -n <命名空间> //查看某个namespace下的所有组件运行情况
14. kubectl cluster-info //查看集群状态 
15. kubectl config view //查看配置(kubectl配置位于~/.kube/config)
16. kubectl get services //查看services
 
