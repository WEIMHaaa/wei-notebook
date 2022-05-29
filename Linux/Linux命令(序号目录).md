[TOC]

---

1. awk
2. cat
3. cd
4. chmod
5. chown
6. curl
7. cut
8. date
9. df
10. du
11. echo
12. find
13. free
14. grep
15. groupadd
16. gzip
17. history
18. ifconfig
19. jar
20. kill
21. last
22. less
23. ln
24. locale
25. lsblk
26. lsof
27. mkdir
28. more
29. mv
30. netstat
31. nohup
32. nslookup
33. ping
34. ps
35. realpath
36. rm
37. rpm
38. rsync
39. scp
40. sed
41. service
42. set
43. sftp
44. source
45. ssh
46. su
47. systemctl
48. tar
49. tcpdump
50. top
51. tree
52. uid
53. uname
54. unzip
55. useradd
56. vim
57. wc
58. whereis
59. whoami
60. yum
61. zcat
62. zless
63. zmore
64. Linux查看硬件资源命令

---

### 0.0.1. awk
- awk '{print $5}' file                 #打印文件中以空格分隔的第五列
- awk -F ',' '{print $5}' file          #打印文件中以逗号分隔的第五列
- awk '/str/ {print $2}' file           #打印文件中包含str的所有行的第二列
- awk -F ',' '{print $NF}' file         #打印逗号分隔的文件中的每行最后一列
- awk '{s+=$1} END {print s}' file      #计算所有第一列的和
- awk 'NR%3==1' file                    #从第一行开始, 每隔三行打印一行

### 0.0.2. cat
- cat -n demo.txt                       #在文件中显示行号
- cat /proc/meminfo                     #查看linux系统内存大小的详细信息, 可以查看总内存、剩余内存、可使用内存等信息
- cat /proc/cpuinfo                     #查看cpu信息
- cat /proc/cpuinfo |grep "cores" |uniq #查看cpu个数
- cat /proc/cpuinfo |grep name |cut -f2 -d: |uniq -c #查看cpu型号
- cat /etc/redhat-release               #查看linux版本
- cat /etc/passwd | sort                #排序查看文件

### 0.0.3. cd
- cd ~      #切换到主目录
- cd /tmp   #切换到目录/tmp
- cd tmp    #切换到当前目录下的tmp目录
- cd /      #切换到根目录
- cd ..     #切换到到上一级目录
- cd ../..  #切换到上二级目录
- cd ~      #切换到用户目录, 比如是root用户, 则切换到/root下
- cd -      #返回上次所在的目录

### 0.0.4. chmod
- chmod a+x 文件名  #给所有人添加可执行权限
- chmod u+x 文件名  #给文件所有者添加可执行权限
- chmod g+x 文件名  #给所在组添加可执行权限
- chmod o+x 文件名  #给所在组以外的人添加可执行权限  
每个文件的三组权限说明：
- a 代表全部的人, 也就是包括u, g和o
- u 代表所有者（user）
- g 代表所有者所在的组群（group）
- o 代表其他人, 但不是u和g（other）
rwx说明：
- r------------4
- w------------2
- x------------1
- ---------------0
- --rw------- (600) 只有所有者才有读和写的权限
- --rw-r--r-- (644) 只有所有者才有读和写的权限, 组群和其他人只有读的权限
- --rwx------ (700) 只有所有者才有读, 写, 执行的权限
- --rwx--x--x (711) 只有所有者才有读, 写, 执行的权限, 组群和其他人只有执行的权限
- --rw-rw-rw- (666) 每个人都有读写的权限
- --rwxrwxrwx (777) 每个人都有读写和执行的权限
权限说明：
- 对于文件的r,w,x权限：  
   r: cat/more/head/tail/less  
   w: vim  
   x: script command
- 对于目录的r,w,x权限：  
   r: ls  
   w: touch/mkdir/rmdir/rm  
   x: cd

### 0.0.5. chown
- chown uname:gname demo.sh  #给文件分配用户和用户组, chown 用户名:用户组 文件
- chown uname:gname /tmp     #给文件分配用户和用户组, chown 用户名:用户组 文件夹

### 0.0.6. curl
- curl https://gitee.com/weimenghua/wei-notebook      #获取页面内容或接口响应(get请求)
- curl -I https://gitee.com/weimenghua/wei-notebook   #-I：获取请求页面或接口的请求头信息(get请求)
- curl -H "Content-Type:application/json" -X POST -d '{"id":"123456","username": "username123","password": "123456"}' 'http://127.0.0.1:9999/demo/add'  #-X POST：post请求

### 0.0.7. cut
- cut -c 1-16                          #截取每行头16个字符
- cut -c 1-16 file                     #截取指定文件中每行头 16个字符
- cut -c3 -                            #截取每行从第三个字符开始到行末的内容
- cut -d ':' -f5                       #截取用冒号分隔的第五列内容
- cut -d ';' -f2, 10                   #截取用分号分隔的第二和第十列内容
- cut -d ' ' -f3 -7                    #截取空格分隔的三到七列

### 0.0.8. date
- date                                 #Wed May 11 10:23:43 CST 2022
- date +%Y%m%d                         #注意：+前面有空格
- date +%Y-%m-%d%t%H:%M:%S

### 0.0.9. df
- df                                  #（Disk Free）命令用于显示目前在linux系统上的文件系统的磁盘使用情况统计
- df -h                               #查看linux系统各分区的使用情况

### 0.0.10. du
du --max-depth=1 -h                   #查看当前的文件夹下的磁盘使用情况
du -sh 文件或文件夹路径                  #查看单个文件夹目录大小
du -sh *                              #查看当前目录下每个文件的大小

### 0.0.11. echo
echo 1 > /proc/sys/vm/drop_caches #清除缓存
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches

### 0.0.12. find
- find /tmp '*.mysql' -print                          #从 /tmp 目录下找后缀是.mysql的文件
- find /tmp -atime 3  -print                          #从 /tmp 目录开始往下找, 找最近3天之内存取过的文件
- find /tmp -ctime 5  -print                          #从 /tmp 目录开始往下找, 找最近5天之内修改过的文件
- find /tmp -user myname 'j*' –print                  #从 /tmp 目录开始往下找, 找myname的、文件名开头是 j 的文件
- find /tmp \(-name 'aa*' -o --name 'bb*' \) –print   #从 /tmp 目录开始往下找, 找寻文件名是 aa 开头或者 bb 开头的文件
- find /tmp -name '*bak' -exec rm {} \;               #从 /tmp 目录开始往下找, 找到凡是文件名结尾为bak的文件, 把它删除掉。-exec 选项是执行的意思, rm 是删除命令, { } 表示文件名, “\;”是规定的命令结尾

### 0.0.13. free
- free       #查看系统占用内存（不带单位）
- free -h    #查看系统占用内存（带单位）
- free -m    #查看linux系统内存使用量和交换区使用量
说明：
- Mem ：内存的使用信息
- Swap ：交换空间的使用信息
- total ：系统总的可用物理内存大小
- used ：已被使用的物理内存大小
- free ：还有多少物理内存可用
- shared ：被共享使用的物理内存大小
- buff/cache ：被 buffer 和 cache 使用的物理内存大小
- available ：还可以被使用的物理内存大小（即系统可用内存约等于free+shared+buff/cache）

### 0.0.14. grep
- ps-ef |grep-c demo        #查看指定进程的个数
- grep-o demo demo.         #查找demo.中的demo关键字（-o:只显示被模式匹配到的字符串, 而不是整个行）
- grep-v 'demo'             #反向匹配, 不包含'demo'
- more xxx-core_err.log | grep -E 'keyWordA|keyWordB' #grep-E 同时匹配多个关键字–或关系
- more xxx-core_err.log | grep keyWordA|keyWordB      #grep-E 同时匹配多个关键字–与关系
说明：grep (global search regular expression(RE)

### 0.0.15. groupadd
- groupadd gname   #添加用户组

### 0.0.16. gzip
gzip -dc demo.tar.gz | grep --binary-files=text -1 '关键字' --color  #查询linux的压缩文件日志, --binary-files=text让二进制文件等价于文本文件

### 0.0.17. history
- history          #查看历史命令
- fc -l            #查看历史命令

### 0.0.18. ifconfig
/sbin/ifconfig -a|grep inet|grep -v 127.0.0.1|grep -v inet6|awk '{print $2}'|tr -d addr:  #获取本机ip地址

### 0.0.19. jar
jar -cvfM0 demo.war demo  #将demo压缩成demo.war

### 0.0.20. kill
- kill             #根据进程id杀进程
- pkill            #根据进程名称杀进程
- killall          #根据进程名称(相关)杀进程

### 0.0.21. last
- last            #查出最近当前哪些IP地址登录过系统

### 0.0.22. less
- less            #查看文件

### 0.0.23. ln
- ln -s file1 lnk1  #创建一个指向文件或目录的软链接
- ln -s /aa/bb cc   #举例：在目标文件所在路径下：ln -s 源文件或目录 目标文件或目录(lnk1|目标文件或目录件：无需新建)
- ln file1 lnk1     #创建一个指向文件或目录的物理链接

### 0.0.24. locale
- locale -a         #查看系统支持的语言
说明：系统编码设置为UTF-8，并支持中文。/etc/sysconfig/i18n的LANG=en_US.UTF-8，在不重启的情况下重新加载i18n文件：source /etc/sysconfig/i18n。

### 0.0.25. lsblk
- lsblk           #列出块设备
说明：
- 第一个软驱 /dev/fd0
- 第二个软驱 /dev/fd1
- 第一块硬盘 /dev/sda
- 第二块硬盘 /dev/sdb, 以此类推
- 第一个SCSI CD-ROM /dev/scd0, 可以用/dev/sr0
- /dev/sda1 是分区 就像windows下的 c盘 d盘
- /tmp, /root, /home是目录 就像windows下的 c:\windows 一样

### 0.0.26. lsof
- lsof -i:port           #根据端口号查进程查
- lsof -i:pid            #根据进程号查端口

### 0.0.27. mkdir
- mkdir –vp 目录1/目录2/目录3 #递归创建目录
- mkdir-vp scf/{lib/,bin/,tmp/{info,product},logs/{info,product},service/deploy/{info,product}}
- mkdir-vp-m 664 /d1/d2/d3/d4 #在创建目录的同时设定权限（而不是采用umask默认值）, 创建目录的同时设定权限为664
- mkdir $(date +"%Y-%m-%d")
- mkdir "$(date +"%Y-%m-%d")"
说明：
- -v：显示命令执行过程中的详细信息（每次创建新目录都显示信息）
- -p：创建子目录, 确保目录名称存在, 如果目录不存在的就新创建一个

### 0.0.28. more
- more                  #查看文件, 空格键：向下翻一页, b：向上翻一页, 回车键：向下滚动一行, q：离开more/less模式

### 0.0.29. mv
- mv /A/* . 	        #将/A中的所有文件移到当前目录(用”.”表示)中
- mv A/*  /B/           #把当前目录的一个子目录里的文件移动到另一个子目录里
- mv * ../              #移动当前文件夹下的所有文件到上一级目录
- mv test.txt demo.txt  #将文件test.txt重命名为demo.txt, 注意：如果当前目录下也有个demo.txt的文件的话, 这个文件是会将它覆盖
- mv A B                #将目录A重命名为B
- mv /A /B/C            #将/a目录移动到/b下, 并重命名为c

### 0.0.30. netstat
- netstat -tunlp |grep port  #根据端口号查进程
- netstat -tunlp |grep pid   #根据进程号查端口
说明：
- -t (tcp) 仅显示tcp相关选项
- -u (udp) 仅显示udp相关选项
- -n 拒绝显示别名, 能显示数字的全部转化为数字
- -l 仅列出在Listen(监听)的服务状态
- -p 显示建立相关链接的程序名  
  列出所有端口 (包括监听和未监听的)
- netstat -a     #列出所有端口
- netstat -at    #列出所有tcp端口
- netstat -au    #列出所有udp端口  
  列出所有处于监听状态的Sockets
- netstat-l      #只显示监听端口
- netstat-lt     #只列出所有监听tcp端口
- netstat-lu     #只列出所有监听udp端口
- netstat-lx     #只列出所有监听UNIX端口  
  显示每个协议的统计信息
- netstat-s      #显示所有端口的统计信息

### 0.0.31. nohup
- nohup command &   #后台运行, 关掉终端也会继续运行。
- command &         #后台运行, 关掉终端会停止运行。
说明：nohup的作用可以将程序以忽略挂起信号（SIGHUP）的方式运行。常见的用法是和 & 命令一同使用, 将命令放置到后台运行, 即使终端挂掉, 进程会忽略挂起信号, 继续运行。

### 0.0.32. nslookup
- nslookup gitee.com            #查询域名对应的IP地址

### 0.0.33. ping
- ping gitee.com    #在网络中 ping 是一个十分强大的 TCP/IP 工具。它的作用主要为： 1、用来检测网络的连通情况和分析网络速度 2、根据域名得到服务器 IP 3、根据 ping 返回的 TTL 值来判断对方所使用的操作系统及数据包经过路由器数量。

### 0.0.34. ps
- ps -ef | grep tomcat*                                  #根据进程名称查找相关进程
- ps -ef | grep port                                     #根据端口号查找相关进程
- ps -ef | grep pid                                      #根据进程号查找相关进程
- ps aux|grep nginx|grep -v grep|awk '{print $2}'        #查看应用进程号
- ps aux|head -1;ps aux|grep -v PID|sort -rn -k +3|head  #linux下获取占用CPU资源最多的10个进程

### 0.0.35. realpath
- realpath 文件名    #打印出文件的绝对路径

### 0.0.36. rm
- rm -rf !(demo1 | demo2)  #删除demo1和demo2文件之外的所有文件

### 0.0.37. rpm
- rpm-qa|grep demo       #查找demo安装包
- rpm-ql demo            #查找demo安装包的安装路径
- rpm-qa                 #查询所有安装的rpm包, 可以配合grep命令
- rpm-qi demo            #查询某个具体包的介绍
- rpm-ivh 包名（支持*）    #安装rpm包
- rpm-e 包名（不支持*）    #卸载rpm包

### 0.0.38. rsync
- rsync -avz /tmp/test /tmp/backup       #本地备份
- rsync -avz /tmp/ root@172.17.1.1:/tmp  #备份（推送）到远程主机
- rsync -avz root@172.17.1.1:/tmp /tmp   #在本地拉取远程主机文件
- rsync -avz --delete test/ tmp--exclude=common/settings.py serverid.txt  #--exclude的路径是相对源目录的路径, 不能用绝对路径
说明：
- 安装：yum-y install rsync
- -v         ----详细模式输出
- -a         ----归档模式, 递归传输并保持文件属性不变
- -z         ----压缩传输
- -delete    ----删除那些DST中存在而在SRC中没有的文件

### 0.0.39. scp
- scp -r root@127.0.0.1:/tmp  /tmp  #将服务器上的文件复制到本地（另一台服务器）
- scp -r /tmp/ root@127.0.0.1:/tmp  #将本地的文件复制到远程服务器上, 注：无/ 

### 0.0.40. sed
- sed 's/find/replace/' file          #替换文件中首次出现的字符串并输出结果
- sed '10s/find/replace/' file        #替换文件第 10 行内容
- sed '10,20s/find/replace/' file     #替换文件中 10-20 行内容
- sed -r 's/regex/replace/g' file     #替换文件中所有出现的字符串
- sed -i 's/find/replace/g' file      #替换文件中所有出现的字符并且覆盖文件
- sed -i '/find/i\newline' file       #在文件的匹配文本前插入行
- sed -i '/find/a\newline' file       #在文件的匹配文本后插入行
- sed '/line/s/find/replace/' file    #先搜索行特征再执行替换
- sed -e 's/f/r/'-e 's/f/r' file      #执行多次替换
- sed 's#find#replace#' file          #使用 # 替换 / 来避免 pattern 中有斜杆
- sed -i-r 's/^\s+//g' file           #删除文件每行头部空格
- sed '/^$/d' file                    #删除文件空行并打印
- sed -i 's/\s\+$//' file             #删除文件每行末尾多余空格
- sed -n '2p' file                    #打印文件第二行
- sed -n '2,5p' file                  #打印文件第二到第五行
- sed -n '100 p' demo.                #-n选项屏蔽默认输出
- sed -n '100,200 p' demo.            #执行查看哪几行内容
- sed -i '$a\upstream '"${codeName}"'-oms {\n\tserver 127.0.0.1:'"${tomcat_http_port}"';\n}\n' /app/demo/upstream.conf; # 踩坑：'"变量名称"' ：变量需加上 '""'
- sed -i "s/aaa/bbb/g" /tmp/*/*/demo.txt; #替换:将文本里所有aaa替换为bbb。s:search 查找并替换; g:global 全部替换; -i:implace; * 通配符。
- sed -i '$a\末尾追加内容' /tmp/demo.txt; #末尾追加内容。$获取文件的末尾, a追加在文件末尾。
- sed -i '/aaa/ i\指定行（关键字）前加' /tmp/demo.txt; #在指定行（关键字）前面添加内容。前面追加i; 后面追加a。
- sed -i '/aaa/ a\指定行（关键字）后加' /tmp/demo.txt; #在指定行（关键字）后面添加内容。前面追加i; 后面追加a。
- sed -i '/aaa/i 指定行（关键字）前加' /tmp/demo.txt;  #在指定行（关键字）前面添加内容。前面追加i; 后面追加a。
- sed -i '/aaa/a 指定行（关键字）后加' /tmp/demo.txt;  #在指定行（关键字）后面添加内容。前面追加i; 后面追加a。
- sed -i '10 i 指定行（行号）前加' /tmp/demo.txt;      #在指定行（行号）前面添加内容。前面追加i; 后面追加a。
- sed -i '10 a 指定行（行号）后加' /tmp/demo.txt;      #在指定行（行号）后面添加内容。前面追加i; 后面追加a。
- sed -i "s/<core>[0-9]<\/core>.*$/<core>2<\/core>/g" /tmp/demo.txt #/ 需用 \ 来转义

### 0.0.41. service
- service network restart  #重启网络, 方式二：/etc/init.d/network restart

### 0.0.42. set
- 在"set-e"之后出现的代码, 一旦出现了返回值非零, 整个脚本就会立即退出, exit 0---是正常退出的命令, exit 1---是非正常退出的命令, echo $?获取上次命令执行的结果, 如果是0就是正常执行, 如果非0就是执行出现了异常
- set-x 会在执行每一行shell脚本时, 把执行的内容输出来, 看到当前执行的情况, 里面涉及的变量也会被替换成实际的值

### 0.0.43. sftp
- sftp -P 端口号 用户名@服务器地址  #连接SFTP服务器
- get xxx（文件名）               #下载文件
- get -r xxx（文件夹名）          #下载文件夹
- put xxx（文件名）               #上传文件
- put -r xxx（文件夹名）          #上传文件夹

### 0.0.44. source
- source /etc/profile                #使配置文件生效

### 0.0.45. ssh
- ssh-keygen  #不加邮箱的话id_rsa.pub的后缀就是机器的用户名。管理节点生成SSH-KEY,  之后一路回车就行啦; 会在～（home）目录下中产生.ssh（隐藏）文件夹, 里面有两个文件id_rsa(私钥)、id_rsa.pub(公钥)文件, 通过ls -a查看隐藏文件
- ssh-keygen -t rsa -C "1425615649@qq.com"
- ssh-copy-id root@目标节点IP #ssh-copy-id root@127.0.0.1, 添加目标节点的SSH认证信息。添加认证信息后, 目标节点主机的~/.ssh/目录下将会出现一个authorized_keys文件, 里面包含了管理节点的id_rsa.pub(公钥)信息
- ssh root@127.0.0.1 #验证是否安装成功
- exit #退出免密登录

### 0.0.46. su
- su 用户名   #su是switch user的缩写, 表示用户切换, 从新的用户状态下输入“exit”即可退回到刚才的用户状态

### 0.0.47. systemctl
- systemctl redis start
- systemctl redis stop
- systemctl enable redis   #开机自启动  
说明：systemd是linux系统最新的初始化系统(init),作用是提高系统的启动速度, 尽可能启动较少的进程, 尽可能更多进程并发启动。systemd对应的进程管理命令是systemctl。

### 0.0.48. tar
- tar -zxvf demo.tar.gz                   #解压demo.tar.gz到当前目录下
- tar -xvf demo.tar.gz --force-local      #去掉z,--force-local忽略特殊符号
- tar -cvf demo.tar.gz demo --force-local #压缩文件

### 0.0.49. tcpdump
- tcpdump tcp port 3306
- tcpdump udp port 3306

### 0.0.50. top
- top                           #查看进程占用内存
- top -s

### 0.0.51. tree
- tree                          #树状图列出目录内容, yum-y install tree

### 0.0.52. uid
- uid                           #查看用户的uid和gid：cat /etc/passwd
- id demo                       #查看用户id
- id -u demo                    #查看用户uid
- id -g demo                    #查看用户gid
- usermod -u 666 demo           #修改用户demo的uid
- usermod -g 600 demo           #修改用户demo的gid
- usermod -l new_username old_username    #修改用户名
- usermod -u 666 new_username             #修改用户uid
- usermod -d /tmp -m new_username         #修改用户家目录
- usermod -u 666 -g 600 demo              #同时修改uid和gid
- groupmod -g xxx demo                    #修改用户组demo的gid

### 0.0.53. uname
- uname -a                       #查看linux名称

### 0.0.54. unzip
- unzip -oq demo.war -d /tmp #将demo.war解压到指定目录/tmp,不加-d则默认解压到当前目录

### 0.0.55. useradd
- useradd –g 组名 用户名          #添加用户

### 0.0.56. vim
vim ~/.vimrc  
set ts=4 #设置为4个字符  
set noexpandtab  
set expandtab #设置为4个空格  
注：脚本里面不能有注释, 否则编辑其它文件时的时候会报错, 不过不影响使用  
1、多行删除  
vim 进入命令模式 ：输入 ：set nu 即可查看行号, 输入 ：4,6d 即可删除4到6行, 按u可恢复删除的内容  
2、单行删除  
vim 进入命令模式, 输入：dd , 按u可恢复删除的内容

### 0.0.57. wc
- grep-o keyword filename |wc-l     #查询关键字出现的次数
说明：
- o: 只输出匹配的具体字符串,匹配行中其他内容不会输出-o参数将行转化成列
- keyword：指定的关键字
- filename：指定的文件
- |wc-l ：统计的次数

### 0.0.58. whereis
- whereis demo   #查看软件安装的路径, demo表示软件名称

### 0.0.59. whoami
- whoami #查看当前用户

### 0.0.60. yum
- yum install-y epel-release #配置yum源
- yum install 软件名称        #安装软件, 手动选择y or n  
- yum-y install 软件名称      #安装软件, 自动选择y
- yum remove 软件名称         #卸载软件
- yum update 软件名称         #更新软件
- yum list                   #列出所有可安装的软件包
- yum list updates           #列出所有可更新的软件包
- yum list installed         #列出所有已安装的软件包
- yum info updates           #列出所有可更新的软件包信息
- yum info installed         #列出所有已安裝的软件包信息
- yum clean all              #清理内存

### 0.0.61. zcat
- zcat demo..tar.gz

### 0.0.62. zless
- zless demo..tar.gz

### 0.0.63. zmore
- zmore demo..tar.gz

### 0.0.64. Linux查看硬件资源命令
```
1. uname -a                     #查看内核/操作系统/CPU信息
2. head -n 1 /etc/issue         #查看操作系统版本
3. cat /proc/cpuinfo            #查看CPU信息
4. hostname                     #查看计算机名
5. lspci -tv                    #列出所有PCI设备
6. lsusb -tv                    #列出所有USB设备
7. lsmod                        #列出加载的内核模块
8. env                          #查看环境变量资源
9. free -m                      #查看内存使用量和交换区使用量
10. df -h                       #查看各分区使用情况
11. du -sh <目录名>              #查看指定目录的大小
12. grep MemTotal /proc/meminfo #查看内存总量
13. grep MemFree /proc/meminfo  #查看空闲内存量
14. uptime                      #查看系统运行时间、用户数、负载
15. cat /proc/loadavg           #查看系统负载磁盘和分区
16. mount | column -t           #查看挂接的分区状态
17. fdisk -l                    #查看所有分区
18. swapon -s                   #查看所有交换分区
19. hdparm -i /dev/hda          #查看磁盘参数(仅适用于IDE设备)
20. dmesg | grep IDE            #查看启动时IDE设备检测状况网络
21. ifconfig                    #查看所有网络接口的属性
22. iptables -L                 #查看防火墙设置
23. route -n                    #查看路由表
24. netstat -lntp               #查看所有监听端口
25. netstat -antp               #查看所有已经建立的连接
26. netstat -s                  #查看网络统计信息进程
27. ps -ef                      #查看所有进程
28. top                         #实时显示进程状态用户
29. w                           #查看活动用户
30. id <用户名>                  #查看指定用户信息
31. last                        #查看用户登录日志
32. cut -d: -f1 /etc/passwd     #查看系统所有用户
33. cut -d: -f1 /etc/group      #查看系统所有组
34. crontab -l                  #查看当前用户的计划任务服务
35. chkconfig –list             #列出所有系统服务
36. chkconfig –list | grep on   #列出所有启动的系统服务程序
37. rpm -qa                     #查看所有安装的软件包
```
