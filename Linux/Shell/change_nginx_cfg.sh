#!/usr/bin/env bash

#-----------------------------------------------------------------------------
# author: wmh
# 脚本说明：批量替换Nginx的vhost目录下的文件内容.
#-----------------------------------------------------------------------------

cd /tmp/nginx/conf/vhost/
# 注：不能用ll，只能用ls；获取vhost_list目录下所有文件
vhost_list=$(ls -d *)

for i in ${!vhost_list[@]}; do
  sed -i "s/$1/$2/g" ${vhost_list[$i]}
done
