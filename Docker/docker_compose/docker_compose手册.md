[TOC]

---

### docker-compose安装
1. curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
2. chmod +x /usr/local/bin/docker-compose
3. ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
4. docker-compose --version


### docker-compose命令
1. docker-compose ps                   #ps：列出所有运行容器
2. docker-compose logs                 #logs：查看服务日志输出
3. docker-compose port <容器名称> 8761  #port：打印绑定的公共端口，下面命令可以输出<容器名称> 服务8761端口所绑定的公共端口
4. docker-compose build                #build：构建或者重新构建服务
5. docker-compose start <容器名称>      #start：启动指定服务已存在的容器
6. docker-compose stop <容器名称>       #stop：停止已运行的服务的容器
7. docker-compose rm <容器名称>         #rm：删除指定服务的容器
8. docker-compose up                   #up：构建、启动容器
9. docker-compose up -d                #-d：后台运行
10. docker-compose stop                 #stop：停止容器
11. docker-compose kill <容器名称>       #kill：通过发送SIGKILL信号来停止指定服务的容器
12. docker-compose scale user=3 movie=3 #pull：下载服务镜像, scale：设置指定服务运行容器的个数，以 service=num 形式指定
13. docker-compose run web bash         #run：在一个服务上执行一个命令
14. docker-compose --version            #测试是否安装成功


### docker-compose踩坑
1. docker挂载目录后无权限访问目录，原因是docker创建目录默认用户id是1000，需在宿主机创建一个用户id和组id为1000的用户才行。
