1. 执行yml（不带参数）  
  ansible-playbook demo.yaml

2. 执行yml（带参数）  
  ansible-playbook demo.yaml --extra-vars "user=user_name uid=666 group=group_name"

3. 检查ansible主机是否连通目标机器  
  ansible -m ping hosts_name

4. ansible在目标机器上面执行shell命令  
  ansible hosts_name -m shell -a "cd /tmp && ls -l;"

5. 查看组清单  
  ansible hosts_name --list-hosts  
  ansible hosts_name --list-hosts|grep -v 'hosts'

6. 主机发送文件到目标机器    
  ansible hosts_name -m copy -a "src=/tmp/demo.sh dest=/tmp/"

7. 主机执行目标机器上的脚本  
  ansible hosts_name -m shell -a "sh /tmp/demo.sh"