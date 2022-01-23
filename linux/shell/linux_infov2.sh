#!/bin/bash

#-----------------------------------------------------------------------------
# author: other
# 脚本说明：主机信息.
#-----------------------------------------------------------------------------

IP=`ifconfig eth0 | head -2 | tail -1 | awk '{print $2}' | awk -F":" '{print $2}'`
ZW=`ifconfig eth0 | head -2 | tail -1 | awk '{print $3}' | awk -F":" '{print $2}'`
GW=`route -n | tail -1 | awk '{print $2}'`
HN=`hostname`
DNS=`head -1 /etc/resolv.conf | awk '{print $2}'`

echo '此机IP地址是' $IP
echo '此机子网掩码是' $ZW
echo '此机网关是' $GW
echo '此机主机名是' $HN
echo '此机DNS是' $DNS