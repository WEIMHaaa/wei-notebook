#!/bin/bash

#-----------------------------------------------------------------------------
# author: other
# 脚本说明: 找出占用CPU 内存过高的进程
#-----------------------------------------------------------------------------

echo "-------------------CUP占用前10排序--------------------------------"
ps -eo user,pid,pcpu,pmem,args --sort=-pcpu  |head -n 10

echo "-------------------内存占用前10排序--------------------------------"
ps -eo user,pid,pcpu,pmem,args --sort=-pmem  |head -n 10