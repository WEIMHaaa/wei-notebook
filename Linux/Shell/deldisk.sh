#!/bin/bash

#-----------------------------------------------------------------------------
# author: wmh
# 脚本说明：清除文件.
#-----------------------------------------------------------------------------

echo "清除3天前的tmp|zip文件"
find /tmp/*/logs -mtime +3 | egrep "\.(tmp|zip)$" | xargs rm -f

echo "清除1天前的gz文件"
find /tmp/ -mtime +1 -name "*.gz" | xargs rm -f

echo "清除重定向大日志文件"
for i in $(find /tmp/*/logs/catalina.out); do
  cat /dev/null >$i
done

echo "清除僵尸进程"
for n in $(lsof | grep delete | awk '{print $2}'); do
  echo $n
  kill -9 $n
done
