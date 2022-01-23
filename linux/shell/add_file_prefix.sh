#!/usr/bin/env bash

#-----------------------------------------------------------------------------
# author: wmh
# 脚本说明：批量给文件名添加前缀, 只支持文件, 不支持文件夹. 注：cp表示复制, mv表示剪切
#-----------------------------------------------------------------------------

cd /tmp
for i in $(ls); do
  cp -rf $i "prefix_"$i
done
