# 1、下载并解压zookeeper

## 1.1、下载zookeeper

wget http://apache.fayea.com/zookeeper/zookeeper-3.5.6/apache-zookeeper-3.5.6.tar.gz  
wget http://mirror.bit.edu.cn/apache/zookeeper/zookeeper-3.5.6/apache-zookeeper-3.5.6.tar.gz

## 1.2、解压tar包到/usr/local/zookeeper/
tar -zxvf zookeeper-3.5.6.tar.gz  -C /usr/local/zookeeper/

# 2、配置zoo.cfg
## 2.1、进入conf目录，复制zoo_sample.cfg并命名为zoo.cfg
cd /usr/local/zookeeper/zookeeper-3.5.6/conf/ && cp zoo_sample.cfg zoo.cfg

## 2.2、创建dataDir和logDir
mkdir /usr/local/zookeeper/dataDir   
mkdir /usr/local/zookeeper/logDir

## 2.3、添加dataDir和logDir配置
vim zoo.cfg，添加如下配置：  
内存数据快照的保存目录  
dataDir=/usr/local/zookeeper/dataDir  
日志目录  
dataLogDir=/usr/local/zookeeper/logDir

## 2.4、配置集群
vim zoo.cfg，添加如下配置：  
server.1=127.0.0.1:2888:3888  
server.2=127.0.0.2:2888:3888  
server.3=127.0.0.3:2888:3888  

在的dataDir路径下新增myid文件：  
cd /usr/local/zookeeper/dataDir && touch myid  
vim myid，在对应的IP的机器上输入对应的编号，如在127.0.0.1上，“myid”文件内容就是1，在127.0.0.2上，内容就是2

## 2.5、连接数设置
maxClientCnxns=60   #注意：设置最大连接数为1024,如果服务大于连接数则会导致部分服务连不上zk        

# 3、配置环境变量（可选）
vim /etc/profile，添加如下配置： 
export ZOOKEEPER=/usr/local/zookeeper  
export PATH=$PATH:$ZOOKEEPER/bin  

使用source命令立即生效，刷新环境变量：  
source /etc/profile

# 4、启动zookeeper
因为配置了环境变量，所以在任意目录下都可以运行以下启动命令启动Zookeeper
zkServer.sh start  
zkServer.sh status  

也可以进入bin目录启动zookeeper  
cd /usr/local/zookeeper/bin  
./zkServer.sh start    //启动  
./zkServer.sh stop     //停止  
./zkServer.sh restart  //重启  
./zkServer.sh status   //查看状态（查看是leader，follower，standalone）  
如果是连接多个不同的主机节点，可以使用如下命令：  
./zkCli.sh -server 127.0.0.1:2888

# 5、启动zookeeper客户端
./zkCli.sh   //启动客户端  
ls /         //查看zookeeper节点