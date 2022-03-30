通过free -m查看到buff/cache的值比较大，通过下面的命令，清除缓存。  
echo 1 > /proc/sys/vm/drop_caches  
echo 2 > /proc/sys/vm/drop_caches  
echo 3 > /proc/sys/vm/drop_caches

获取本机ip地址
/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d addr:

修改用户名  
usermod -l new_username old_username;

修改用户uid  
usermod -u 666 new_username;

修改用户家目录  
usermod -d /data/mydir -m new_username;

Linux下获取当前的目录：$(cd `dirname $0`;pwd)  
dirname $0，取得当前执行的脚本文件的父目录  
cd `dirname $0`，进入这个目录(切换当前工作目录)  
pwd，显示当前工作目录(cd执行后的)  
在使用的过程中需注意此事项：命令中“`”不是英文的单引号，而是英文输入法下的“~”同一个按键下面的那个符号。  

shell数组的遍历  
1. 使用@ 或 * 可以获取数组中的所有元素
2. ${数组名[@]}得到是以空格隔开的元素，可以用在数组遍历中
3. ${数组名[*]}得到的是一整个字符串
4. 注意：${数组名}并不会获得所有值，它只会获得到第一个元素的值
即${数组名}等价于${数组名[0]}

获取所有数组元素  
方式一  
echo "${demo_array[@]}"  
方式二  
echo "${demo_array[*]}"  

获取所有数组索引  
方式一  
echo "${!demo_array[@]}"  
方式二  
echo "${!demo_array[*]}"  

获取数组长度  
方式一  
echo "${#demo_array[@]}"  
方式二  
echo "${#demo_array[*]}"  

删除操作  
删除某个数组元素  
unset demo_array[weight]  
删除整个数组  
unset demo_array  

模式替换  
${数组名[@]/模式/新值}  
替换demo_array数组中所有成员包含的"ming"为"ning"  
echo "${demo_array[@]/ming/ning}"  

遍历数组  
for value in "${demo_array[@]}"  
do  
echo "${value}"  
done  

创建一个指向文件或目录的软链接  
ln -s file1 lnk1   

举例：在目标文件所在路径下：ln -s 源文件或目录 目标文件或目录(lnk1|目标文件或目录件：无需新建)  
ln -s /data/.jenkins/bak_workspace bak_jenkins_workspace  

创建一个指向文件或目录的物理链接  
ln file1 lnk1   

2>&1 重定向  
nohup command>/dev/null 2>&1 &  
- nohup 表示当前用户和系统的会话下的进程忽略响应HUP消息，也就是不挂断地运行命令
- /dev/null 表示空设备文件
- 0 表示stdin标准输入
- 1 表示stdout标准输出
- 2 表示stderr标准错误
- & 表示把该命令以后台的job的形式运行

shell反斜杠拼成一行  
./configure \  
–prefix=/usr \  
–sbin-path=/usr/sbin/nginx \  
–conf-path=/etc/nginx/nginx.conf \