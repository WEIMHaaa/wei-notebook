#!/bin/bash

dbname_list=(dbname_a dbname_b)

# 注：数组变量前要加！
for i in ${!dbname_list[@]}; do
  mysql -h00.00.00.00 -uroot -proot <<EOF
    delete from mysql.user where User='${dbname_list[$i]}';
    flush privileges;
    drop database ${dbname_list[$i]};
    flush privileges;
EOF
done
