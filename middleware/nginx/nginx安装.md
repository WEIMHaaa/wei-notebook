# 1、前提
安装依赖包
yum -y install gcc zlib zlib-devel pcre-devel openssl openssl-devel

# 2、下载并解压nginx到/usr/local/ngnix/
## 1.1、下载nginx
方式一：官网下载：http://nginx.org/en/download.html
方式二：wget http://nginx.org/download/nginx-1.13.7.tar.gz

## 2.1、解压tar包到/usr/local/nginx/目录下
tar -zxvf nginx-1.13.7.tar.gz -C /usr/local/ngnix/

# 3、安装nginx
cd /usr/local/nginx/nginx-1.13.7
执行配置
./configure
编译安装
make && make install

# 4、配置nginx.conf
将端口号改成8089，因为可能apeache占用80端口，apeache端口尽量不要修改，选择修改nginx端口
vim /usr/local/nginx/nginx-1.13.7/conf/nginx.conf

# 5、启动nginx
cd /usr/local/nginx/sbin/nginx/nginx-1.13.7
./nginx           //启动
./nginx -s stop   //关闭
./nginx -s reload //重启

# 6、查看nginx进程是否启动
ps -ef | grep nginx

# 7、验证nginx是否配置成功
nginx -t

# 8、查询nginx的安装路径
whereis nginx