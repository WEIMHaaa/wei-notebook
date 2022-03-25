# 连接zookeeper服务
连接本机zookeeper服务：`./zkCli.sh`  
连接远程zookeeper服务：`./zkCli.sh -server ip:port （./zkCli.sh -server 127.0.0.1:2181）`  

# zookeeper常用命令
列出zookeeper根节点：`ls /`  
列出zookeeper dubbo节点：`ls /dubbo`  
获取节点信息：`get /dubbo`  
查看某个接口服务：`ls /dubbo/com.demo.service.DemoService`  
查看节点状态：`stat /dubbo`  
创建节点：`create /tmp 123` （注：节点后面得有值，如：123，节点值就是123，可设置""）  
退出zkCli：`quit`  

# znode 的状态信息
每个 znode 的状态信息包含以下内容：  
czxid，创建（create）该 znode 的 zxid  
mzxid，最后一次修改（modify）该 znode 的 zxid  
pzxid，最后一次修改该 znode 子节点的 zxid  
ctime，创建该 znode 的时间  
mtime，最后一次修改该 znode 的时间  
dataVersion，该节点内容的版本，每次修改内容，版本都会增加  
cversion，该节点子节点的版本  
aclVersion，该节点的 ACL 版本  
ephemeralOwner，如果该节点是临时节点（ephemeral node），会列出该节点所在客户端的 session id；如果不是临时节点，该值为 0
dataLength，该节点存储的数据长度  
numChildren，该节点子节点的个数  