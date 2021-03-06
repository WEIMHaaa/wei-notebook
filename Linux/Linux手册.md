[TOC]

---

### 环境变量
基本提示符，对于root用户是#，对于普通用户是$
1. 使用echo命令查看单个环境变量。例如：echo $PATH
2. 使用env查看所有环境变量。例如：env
3. 使用set查看所有本地定义的环境变量。
常用的环境变量：
1. PATH      决定了shell将到哪些目录中寻找命令或程序
2. HOME      当前用户主目录
3. USER      当前用户
4. HISTSIZE　历史记录数
5. LOGNAME   当前用户的登录名
6. HOSTNAME　指主机的名称
7. SHELL    当前用户Shell类型
8. LANGUGE  语言相关的环境变量，多语言可以修改此环境变量
9. MAIL　    当前用户的邮件存放目录


### Linux下获取当前的目录
Linux下获取当前的目录：$(cd `dirname $0`;pwd)  
dirname $0，取得当前执行的脚本文件的父目录  
cd `dirname $0`，进入这个目录(切换当前工作目录)  
pwd，显示当前工作目录(cd执行后的)  
在使用的过程中需注意此事项：命令中“`”不是英文的单引号，而是英文输入法下的“~”同一个按键下面的那个符号。


### Linux设置开机自启
/etc/rc.local映射文件是/etc/rc.d/rc.local。(前提：chmod +x /etc/rc.d/rc.local)  
在/etc/rc.local或者/etc/rc.d/rc.local添加执行脚本语句, 举例：sh /tmp/demo.sh。


### Linux查看防火墙状态
1. getenforce
2. /usr/sbin/sestatus -v
SELinux 有三种工作模式，分别是：  
1. enforcing：强制模式。违反 SELinux 规则的行为将被阻止并记录到日志中
2. permissive：宽容模式。违反 SELinux 规则的行为只会记录到日志中，一般为调试用
3. disabled：关闭 SELinux
SELinux 工作模式可以在 /etc/selinux/config 中设定, 如果想从 disabled 切换到 enforcing 或者 permissive 的话，需要重启系统，反过来也一样, enforcing 和 permissive 模式可以通过 setenforce 1|0 命令快速切换


### Linux修改主机名
1. vim /etc/sysconfig/network, 添加：HOSTNAME=主机名, hostname 新主机名, 然后用ssh重新登录，就会显示新的主机名。
2. hostnamectl set-hostname 新主机名, 重启：reboot。


### Linux字体颜色
1. 浅蓝色：表示链接文件
2. 灰色：表示其他文件
3. 绿色：表示可执行文件
4. 红色：表示压缩文件
5. 蓝色：表示目录
6. 红色闪烁：表示链接的文件有问题了
7. 黄色：表示设备文件，包括block，char，fifo


### 清除缓存buff或者cache
通过free -m查看到buff/cache的值比较大，通过下面的命令，清除缓存。
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches


### 常见服务对应的端口
查看远端的服务是否开通： tcp 8000 端口，比如查看baidu.com是否开通：telnet baidu.com 8000。
1. 21 FTP
2. 22 SSH
3. 25 SMTP
4. 3306 MYSQL
5. 873 rsync
6. 161 snmp
7. 111 rpc
8. 3389 RPC
9. 80 HTTP
10. 443 HTTPS
11. 110 POP3
12. 53 DNS
13. 514 syslog
