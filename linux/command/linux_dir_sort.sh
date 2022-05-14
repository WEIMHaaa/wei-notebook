#!/bin/bash

#-----------------------------------------------------------------------------
# author: wmh
# 脚本说明：字符串排序
#-----------------------------------------------------------------------------

tmp="a、b、c、d、e、f、g、h、i、j、k、l、m、n、o、p、q、r、s、t、u、v、w、x、y、z"

arr="awk
     cat
     cd
     chmod
     chown
     curl
     cut
     date
     df
     du
     echo
     find
     free
     grep
     groupadd
     gzip
     history
     ifconfig
     jar
     kill
     last
     less
     ln
     locale
     lsblk
     lsof
     mkdir
     more
     mv
     netstat
     nohup
     nslookup
     ping
     ps
     realpath
     rm
     rpm
     rsync
     scp
     sed
     service
     set
     sftp
     source
     ssh
     su
     systemctl
     tar
     tcpdump
     top
     tree
     uid
     uname
     unzip
     useradd
     vim
     wc
     whereis
     whoami
     yum
     zcat
     zless
     zmore
"

arr_sort(){
  #tr将子字符串中的空白转换为换行符, 再用sort排序, 按ASCII正向排序, -r参数:  按ASCII码反向排序
  array=(`echo ${arr} | tr ' ' '\n' | sort` )

  for ((i=0; i<${#array[@]}; i++)); do
    seq=`expr $i + 1`
    echo ${seq}". "${array[i]}
    echo ${array[i]}
  done
}

arr_sort