#!/usr/bin/env bash

#-----------------------------------------------------------------------------
# author: wmh
# 脚本说明：批量创建用户.
#-----------------------------------------------------------------------------

user=`cat /tmp/user.txt`
for i in $user
do
    useradd $i
    echo "123456" |passwd --stdin "$i"
done