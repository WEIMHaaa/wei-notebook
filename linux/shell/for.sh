#!/usr/bin/env bash

#-----------------------------------------------------------------------------
# author: wmh
# 脚本说明：for循环.
#-----------------------------------------------------------------------------

for1() {
  array=(a b c)
  for i in ${array[@]}; do
    echo "for循环: ${i}"
  done
}

for2() {
  array1=(a1 b1 c1)
  array2=(a2 b2 c2)
  for ((i = 0; i < ${#array1[@]}; i++)); do
    for ((i = 0; i < ${#array2[@]}; i++)); do
      echo "for循环 第i=${i}次: ${array1[i]} ${array2[i]}"
    done
  done
}

for3() {
  array1=(a1 b1 c1)
  array2=(a2 b2 c2)
  #数组位置的话需要加!
  for i in ${!array1[@]}; do
    for j in ${!array2[@]}; do
      # ${i} -eq ${j}: 表示参数i和参数j的位置相同
      if [ ${i} -eq ${j} ]; then
        echo "for循环 第i=${i} j=${j}次: array1=${array1} array2=${array2}"
        echo "for循环 第i=${i} j=${j}次: array1=${array1[$i]} array2=${array2[$j]}"
        echo " "
      fi
    done
  done
}

for1
for2
for3
