### 一、下载及解压kafka  
https://kafka.apache.org/downloads  
tar -xzvf kafka_2.12-2.4.0.tgz  


### 二、配置kafka
kafka的配置文件在config/server.properties文件中
broker.id是kafka broker的编号，集群里每个broker的id需不同：  
broker.id=0

listeners是监听地址，需要提供外网服务的话，要设置本地的IP地址：
listeners=PLAINTEXT://127.0.0.1:9092

kafka运行日志存放的路径：  
log.dirs=/tmp/kafka_2.10-0.8.2.2/logs

zookeeper配置：  
zookeeper.connect=127.0.0.1:2181,1127.0.0..2:2181,127.0.0.3:2181


### 三、启动及停止kafka
1. 启动kafka
``` bin/kafka-server-start.sh -daemon config/server.properties ```  
-daemon 参数会将任务转入后台运行，输出日志信息将写入日志文件，日志文件在执行命令的目录下的logs目录中kafkaServer.out，结尾输同started说明启动成功。
也可以用jps命令，看有没有kafka的进程

2. 停止kafka
``` bin/kafka-server-stop.sh config/server.properties ```

### 四、topic相关操作
#### 查看topic列表  
./kafka-topics.sh --list --zookeeper 127.0.0.1:2181  

#### 查看特定主题的详细信息  
./kafka-topics.sh --zookeeper 127.0.0.1:2181 --describe  --topic testTopic  

#### 创建topic  
./kafka-topics.sh --create --zookeeper 127.0.0.1:2181 --replication-factor 3 --partitions 3 --topic topicTest  

#### 发送消息  
ip地址应用本地ip，使用127.0.0.1会报错  
./kafka-console-producer.sh --broker-list 127.0.0.1:9092 --topic topicTest  

#### 接收消息  
在2.5.0版本之前只支持 --broker-list；在2.5.0版本之后支持 --bootstrap-server，如果版本老于2.2，应该用--zookeeper；可使用127.0.0.1  
./kafka-console-consumer.sh --broker-list 127.0.0.1:9092 --topic topicTest --from-beginning  
./kafka-console-consumer.sh --zookeeper 127.0.0.1:2181 --topic topicTest --from-beginning

#### 删除topic  
./kafka-topics.sh --zookeeper 127.0.0.1:2181 --delete  --topic testTopic