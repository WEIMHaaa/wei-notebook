#!/bin/bash

dbname_list=(dbname_a dbname_b)

#原始sql：revoke delete,drop on test1_ats.* from tc_test1_ats;
#正式使用时,EOF里面不能有注释,且EOF无空格,或者其它无关mysql的语句
for dbname in ${database[@]};
do
    mysql -h127.0.0.1 -uroot -ppassword<<EOF
    revoke delete, drop on xxx_$dbname.* from xxx_$dbname;
    flush privileges;
EOF
done