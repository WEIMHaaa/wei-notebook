#!/usr/bin/env bash

#-z 启用压缩
#-v 输出详细信息
#-r 表示递归
#-a选项递归同步、保留符号链接、保留权限、保留时间戳、保留所有者和组。
rsync -azvr /var/log/ /root/tmp/

#将文件从本地同步到远程目录
rsync -avz /root/tmp/ root@127.0.0.1:/root/tmp

#将文件从远程目录同步到本地
rsync -avz root@127.0.0.1:/root/tmp /root/tmp

#在传输过程中查看rsync进度
rsync -avz --progress /root/tmp/ root@127.0.0.1:/root/tmp