
查看mongo版本
mongo --version             

备份恢复mongodb
//如果是在本地导入导出，端口也没有更改的情况下，-h和--port参数可选；如果没有设置密码情况下，-u和-p参数也可以不用加
备份格式：/data/mongodb/bin/mongodump -h IP --port 端口号 -u 用户 -p 密码 -d 数据库名 -o 存储路径
举例：/usr/local/mongodb4/bin/mongodump -d easy-mock -o /tmp/
恢复格式：/mnt/mongodb/bin/mongorestore -h IP --port 端口号 -u 用户名 -p 密码  -d 数据库名 备份的文件夹名

安装mongodump  
重新安装mongodb 4.4版本之后，发现mongodb bin路径下没有了mongodump等相关工具，需要自行下载，然后解压放到安装好的路径之下， 官网下载地址：https://www.mongodb.com/try/download/database-tools, 将mongodump放到原先easy-mock的bin目录下。  
注：查看Linux版本：cat /etc/os-release; 或者 cat /proc/version;
