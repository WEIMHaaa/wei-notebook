
playbooks使用yaml语法，在ansible中几乎所有的yaml文件都是以list开始，每个item是键值对的list。  
所有的yaml文件都以---开头表示开始一个document，所有的列表元素以-开头，键值对用:。  
键值对中的值如果是bool类型的字符串true/false（首字母不论大小写），pyyaml会load成python中对应的bool值，在键值对中如果值中有:或者以{{开头的变量定义，则必须用引号引起来。

规则  
- 大小写敏感  
- 文档以---开始  
- 缩进只能使用空格，不能使用tab  

检查playbook  
ansible-playbook -C playbook-demo.yml