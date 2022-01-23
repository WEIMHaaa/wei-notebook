#查看缓存
free -m

#清除缓存
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches

#查看当前用户
whoami

#查看Linux版本
cat /etc/redhat-release
#CentOS Linux release 7.9.2009 (Core)