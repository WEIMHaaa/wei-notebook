#!/bin/bash

dbname_list=(dbname_a dbname_b)

#注：注意单双引号
for dbname in ${dbname_list[@]};
do
    mysql -h127.0.0.1 -uroot -ppassword
    grant all on $dbname.* to "'"$dbname"'"@"'"127.0.0.1.%"'" identified by "'"$dbname#passwd"'";
    grant select,update,insert,delete on $dbname.* to $dbname@'%';

    #echo 'grant all on $dbname.* to "'"$dbname"'"@"'"127.0.0.1.%"'" identified by "'"$dbname#passwd"'";'
    #echo 'grant select,update,insert,delete on $dbname.* to $dbname@'%';'
done
