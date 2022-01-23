#!/usr/bin/env bash

#查看应用进程号
ps aux|grep rocketmq|grep -v grep|awk '{print $2}'
ps aux|grep dubbo|grep -v grep|awk '{print $2}'
ps aux|grep zookeeper|grep -v grep|awk '{print $2}'
ps aux|grep redis|grep -v grep|awk '{print $2}'
ps aux|grep nginx|grep -v grep|awk '{print $2}'
ps aux|grep openvpn|grep -v grep|awk '{print $2}'

#linux下获取占用CPU资源最多的10个进程，可以使用如下命令组合：
ps aux|head -1;ps aux|grep -v PID|sort -rn -k +3|head