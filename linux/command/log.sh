#!/usr/bin/env bash

#查询linux的压缩文件日志
#--binary-files=text让二进制文件等价于文本文件
gzip -dc catalina20190416.out.tar.gz | grep --binary-files=text -1 '下单验价' --color

#zless查看zip文件
zless demo_err_2021-06-26.0.log.zip