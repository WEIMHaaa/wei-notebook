[TOC]

--- 

easy-mock介绍文档：https://easy-mock.bookset.io/docs#ru-he-ben-di-bu-shu
easy-mock安装文档：https://github.com/easy-mock/easy-mock/blob/dev/README.zh-CN.md

查看easy-mock服务端口情况
```
lsof -i :7300
netstat -tunlp |grep 7300
```

### 启动mongodb服务
- 停止mongodb服务：mongod --dbpath /var/lib/mongo --logpath /var/log/mongodb/mongod.log --shutdown
- 启动mongodb服务：mongod --dbpath /var/lib/mongo --logpath /var/log/mongodb/mongod.log --fork
- 查看mongodb启动日志：tail -10f /var/log/mongodb/mongod.log

- 进入mongodb数据库：cd /usr/local/mongodb4/bin && ./mongo
- 查看数据库：show dbs
- 进入某个数据库：use easy-mock
- 查看数据表：show collections
- 查看数据表数据 db.数据库名称.find()：db.mocks.find()
- 查看数据表数据 db.数据库名称.find()：db.users.find()


### 启动redis
方式一：/usr/local/redis/bin/redis-server /usr/local/redis/redis.conf
方式二：cd /usr/local/redis/bin/ && ./redis-server /usr/local/redis/redis.conf
后台运行redis：在/usr/local/redis/redis.conf 将daemonize no修改为daemonize yes，默认会生成在/var/run/redis.pid （疑问：重启服务器之后默认变成daemonize no？）


### 启动easy-mock
cd /usr/local/easy-mock && rm -rf node_modules && rm -rf package-lock.json;
npm cache clear --force;
全局安装pm2：npm install pm2 -g  #pm2以进程方式后台运行node文件，否则可能存在启动一小会儿就挂掉
npm install -g pm2 (注:此方法可能无法生成node_modules, 需使用cnpm install；npm run dev  不能后台起(迷惑)) 
pm2 start app.js
