[TOC]

---

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

3. 查看组清单  
ansible <hosts_name> --list-hosts  

4. 主机发送文件到目标机器    
ansible <hosts_name> -m copy -a "src=/tmp/demo.sh dest=/tmp/"

5. 主机执行目标机器上的脚本  
ansible <hosts_name> -m shell -a "sh /tmp/demo.sh"

6. 同步文件 delete=yes: 全量同步, 保持2边数据一致; 不加则增量同步
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
