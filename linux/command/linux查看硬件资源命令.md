1. uname -a                     #查看内核/操作系统/CPU信息
2. head -n 1 /etc/issue         #查看操作系统版本
3. cat /proc/cpuinfo            #查看CPU信息
4. hostname                     #查看计算机名
5. lspci -tv                    #列出所有PCI设备
6. lsusb -tv                    #列出所有USB设备
7. lsmod                        #列出加载的内核模块
8. env                          #查看环境变量资源
9. free -m                      #查看内存使用量和交换区使用量
10. df -h                       #查看各分区使用情况
11. du -sh <目录名>              #查看指定目录的大小
12. grep MemTotal /proc/meminfo #查看内存总量
13. grep MemFree /proc/meminfo  #查看空闲内存量
14. uptime                      #查看系统运行时间、用户数、负载
15. cat /proc/loadavg           #查看系统负载磁盘和分区
16. mount | column -t           #查看挂接的分区状态
17. fdisk -l                    #查看所有分区
18. swapon -s                   #查看所有交换分区
19. hdparm -i /dev/hda          #查看磁盘参数(仅适用于IDE设备)
20. dmesg | grep IDE            #查看启动时IDE设备检测状况网络
21. ifconfig                    #查看所有网络接口的属性
22. iptables -L                 #查看防火墙设置
23. route -n                    #查看路由表
24. netstat -lntp               #查看所有监听端口
25. netstat -antp               #查看所有已经建立的连接
26. netstat -s                  #查看网络统计信息进程
27. ps -ef                      #查看所有进程
28. top                         #实时显示进程状态用户
29. w                           #查看活动用户
30. id <用户名>                  #查看指定用户信息
31. last                        #查看用户登录日志
32. cut -d: -f1 /etc/passwd     #查看系统所有用户
33. cut -d: -f1 /etc/group      #查看系统所有组
34. crontab -l                  #查看当前用户的计划任务服务
35. chkconfig –list             #列出所有系统服务
36. chkconfig –list | grep on   #列出所有启动的系统服务程序
37. rpm -qa                     #查看所有安装的软件包