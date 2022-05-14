#!/bin/bash

#-----------------------------------------------------------------------------
# author: wmh
# 脚本说明：字符串排序
#-----------------------------------------------------------------------------

arr="ccc
     aaa
     bbb
     abc
     def
"

arr_sort(){
  #tr将子字符串中的空白转换为换行符, 再用sort排序, 按ASCII正向排序, -r参数:  按ASCII码反向排序
  array=(`echo ${arr} | tr ' ' '\n' | sort` )

  for ((i=0; i<${#array[@]}; i++)); do
    seq=`expr $i + 1`
    echo ${seq}". "${array[i]}
#    echo ${array[i]}
  done
}

arr_sort