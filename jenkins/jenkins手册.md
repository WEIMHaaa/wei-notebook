[TOC]

---

### Jenkins工作原理  
1. 构建前（也可以理解为构建时），jenkins为每个job创建单独工作空间目录，每次构建通过git将代码拉取当前工作空间目录（workspace）。  
2. 构建时，jenkins执行build脚本，脚本一般拉取代码，前端打包，后端打包，将打包后的文件发送到目标机器，重启应用。  
3. 构建后，发送邮件给触发者或者生成测试报告。


### Jenkins搭建
1. windows环境  
- 下载地址：https://www.jenkins.io/download/thank-you-downloading-windows-installer-stable
- 安装Jenkins
cd jenkins.war所在路径,进入cmd，执行：`java -jar jenkins.war`
注：如果Jenkins给提示的路径不对，可用everything直接搜索initialAdminPassword
路径1：C:\Windows\SysWOW64\config\systemprofile\AppData\Local\Jenkins\.jenkins\secrets\initialAdminPassword
路径2：C:\Users\wmh\.jenkins\secrets\initialAdminPassword
- 验证Jenkins
访问地址：http://localhost:8080/  
账号密码：admin/admin

2. Linux环境
- 下载地址：http://updates.jenkins-ci.org/download/war/
- 启动Jenkins：`cd /data;nohup java -Xmx3072m -Xms3072m -Xmn768m -XX:PermSize=128m -XX:MaxPermSize=256M -Xss512k -jar jenkins.war &`
这里的几个 JVM 参数含义如下：
```
-Xms: 使用的最小堆内存大小
-Xmx: 使用的最大堆内存大小
-XX:PermSize: 内存的永久保存区域大小
-XX:MaxPermSize: 最大内存的永久保存区域大小
```

3. Jenkins服务常用操作
windows
- 停止服务：`jenkins.exe stop`
- 启动服务：`jenkins.exe start`
- 重启服务：`jenkins.exe restart`

windows和Linux
- 关闭jenkins服务：`http://localhost:8080/exit`
- 重新启动jenkins服务器：`http://localhost:8080/restart`
- 重新加载配置信息：`http://localhost:8080/reload`

curl调用Jenkins接口  
格式：`curl -X POST http://{JekinsUrl} --user username:APItoken`
例子：`curl -X POST http://localhost:8080 --user admin:1167fe0098226d9f8fc89e74b235d4bf65`


### Jenkins配置
1. Jenkins配置文件config.xml
默认配置文件路径：/data/.jenkins/config.xml
job配置文件路径：/data/.jenkins/jobs/*/config.xml
修改该文件后需重启jenkins才能生效
2. 更改Jenkins工作目录
- 停止Jenkins服务：注：restart重启无效的话，kill -9 结束进程再启动
```
vim /etc/profile，添加：
export JENKINS_HOME=/data/.jenkins
cd /etc && source profile
```
2. 查看配置变更：Jenkins > 系统设置：主目录 已变更为新的目录
3. 将原有工作空相关内容拷贝到新的工作空间


### Jenkins权限控制
1. Jenkins权限  
以dev_base开头：dev_base.*  

2. Jenkins视图过滤  
以common开头且不包含pro：^common((?!pro).)*  
以dev_common开头：^(dev_common).*  
以sonar_fb或者sonar_jly开头：^(sonar_fb|sonar_jly).*  


### IDEA集成Jenkins
1. IDEA安装Jenkins Control插件：File > Settings > Plugins
2. IDEA设置Jenkins服务器信息：File > Settings > Tools > Jenkins Plugin
- Server Address：ip+端口：http://localhost:8080 或者 域名：https://jenkins.xxx.com。注：使用ip+端口还是域名取决于Manage Jenkins > Configuration System  > Jenkins Location的设置，一定要和Jenkins URL的设置保持一致。
- Username：admin。
- Password：在Jenkins > 用户名 > 设置 > 获取API Token。
- Crumb Data：访问http://localhost:8080/crumbIssuer/api/xml?tree=crumb# 获取Crumb Data。
![](./图片/IDEA+Jenkins.png)