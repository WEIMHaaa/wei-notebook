#!/usr/bin/env bash

#根据端口号查找进程
lsof -i :8080

#-t (tcp) 仅显示tcp相关选项
#-u (udp) 仅显示udp相关选项
#-n 拒绝显示别名，能显示数字的全部转化为数字
#-l 仅列出在Listen(监听)的服务状态
#-p 显示建立相关链接的程序名
netstat -tunlp |grep 8080

#linux下查看本机socket端口详细信息
netstat -paut
