#!/usr/bin/env bash

#1、管理节点生成SSH-KEY,  之后一路回车就行啦; 会在～（home）目录下中产生.ssh（隐藏）文件夹, 里面有两个文件id_rsa(私钥)、id_rsa.pub(公钥)文件, 通过ls -a查看隐藏文件
ssh-keygen  # 不加邮箱的话id_rsa.pub的后缀就是机器的用户名
ssh-keygen -t rsa -C "1425615649@qq.com"

#2、添加目标节点的SSH认证信息：
ssh-copy-id root@目标节点IP
ssh-copy-id root@127.0.0.1

#3、添加认证信息后, 目标节点主机的~/.ssh/目录下将会出现一个authorized_keys文件, 里面包含了管理节点的id_rsa.pub(公钥)信息

#4、验证是否安装成功
ssh root@127.0.0.1

#5、退出免密登录
exit