#!/usr/bin/env bash

#-mtime：标准语句写法
#＋10：查找10天前的文件，这里用数字代表天数，＋30表示查找30天前的文件
#"*.*"：希望查找的数据类型，"*.jpg"表示查找扩展名为jpg的所有文件，"*"表示查找所有文件
#-exec：固定写法
#rm -rf：强制删除文件，包括目录
#{} \; ：固定写法，一对大括号+空格+/+;

find / -name file1                   #从 '/' 开始进入根文件系统搜索文件和目录
find / -user user1                   #搜索属于用户 'user1' 的文件和目录
find /home/user1 -name *.bin         #在目录 '/ home/user1' 中搜索带有'.bin' 结尾的文件
find /usr/bin -type f -atime +100    #搜索在过去100天内未被使用过的执行文件
find /usr/bin -type f -mtime -10     #搜索在10天内被创建或者修改过的文件
find / -name *.rpm -exec chmod 755 '{}' ;            #搜索以 '.rpm' 结尾的文件并定义其权限
find / -xdev -name *.rpm                             #搜索以 '.rpm' 结尾的文件，忽略光驱、捷盘等可移动设备
find /文件路径 -name "*.log" -mtime +2 -exec rm {} \;  #删除3天前的所有以“.log”结尾的文件
locate *.ps                                           #寻找以 '.ps' 结尾的文件 - 先运行 'updatedb' 命令
whereis halt                                          #显示一个二进制文件、源码或man的位置
which halt                                            #显示一个二进制文件或可执行文件的完整路径