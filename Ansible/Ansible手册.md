[TOC]

---

### Ansible简介
ansible是自动化运维工具，基于Python开发，集合了众多运维工具（puppet、cfengine、chef、func、fabric）的优点，实现了批量系统配置、批量程序部署、批量运行命令等功能。
ansible是基于模块工作的，本身没有批量部署的能力。真正具有批量部署的是ansible所运行的模块，ansible只是提供一种框架。主要包括：  
(1) 连接插件connection plugins：负责和被监控端实现通信  
(2) host inventory：指定操作的主机，是一个配置文件里面定义监控的主机  
(3) 各种模块核心模块、command模块、自定义模块  
(4) 借助于插件完成记录日志邮件等功能  
(5) playbook：剧本执行多个任务时，非必需可以让节点一次性运行多个任务  


### Ansible搭建
1. ansible的安装来源于epel仓库，因此在安装前需确保安装了正确的epel源：yum install -y epel-release
2. 安装ansible命令：yum install ansible -y
3. 查看ansible是否安装：rpm -qa |grep ansible ，whereis ansible
4. 查看ansible安装信息：ansible --version


### Ansible模块
1. command模块：命令操作
2. copy模块：拷贝文件和目录
3. fetch模块：远程文件copy到本地
4. file模块：文件操作
5. get_url模块：下载文件，类似于wget
6. git模块：代码管理
7. synchronize模块：同步文件，类似于rsync
8. user模块：用户管理
9. template模块：文档内变量的替换


### Ansible基础
1. 检查ansible主机是否连通目标机器  
  ansible -m ping <hosts_name>

2. ansible在目标机器上面执行shell命令  
  ansible <hosts_name> -m shell -a "cd /tmp && ls -l;"
  ansible <hosts_name> -m shell -a "sh /tmp/demo.sh"

3. 查看组清单  
  ansible <hosts_name> --list-hosts  

4. ansible主机发送文件到目标机器    
  ansible <hosts_name> -m copy -a "src=/tmp/demo.sh dest=/tmp/"

5. 同步文件 delete=yes: 全量同步, 保持2边数据一致; 不加则增量同步
  ansible <hosts_name> -m synchronize -a "src=/tmp/ dest=/tmp/ delete=yes"


### playbook基础
playbooks使用yaml语法，在ansible中几乎所有的yaml文件都是以list开始，每个item是键值对的list。  
所有的yaml文件都以---开头表示开始一个document，所有的列表元素以-开头，键值对用:。  
键值对中的值如果是bool类型的字符串true/false（首字母不论大小写），pyyaml会load成python中对应的bool值，在键值对中如果值中有:或者以{{开头的变量定义，则必须用引号引起来。

规则
- 大小写敏感
- 文档以---开始
- 缩进只能使用空格，不能使用tab

1. 执行yml（不带参数）  
  ansible-playbook demo.yaml

2. 执行yml（带参数）  
  ansible-playbook demo.yaml --extra-vars "user=user_name uid=666 group=group_name"

3. 检查playbook  
  ansible-playbook -C playbook-demo.yml


### Ansible踩坑
ansible脚本中的参数不能带-
