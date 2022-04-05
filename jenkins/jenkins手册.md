1. Jenkins下载地址
http://updates.jenkins-ci.org/download/war/

2. Jenkins启动命令
cd /data;nohup java -Xmx3072m -Xms3072m -Xmn768m -XX:PermSize=128m -XX:MaxPermSize=256M -Xss512k -jar jenkins.war &

3. Jenkins关闭+重启+重载
浏览器进入Jenkins，登录：http://localhost:8080/
关闭Jenkins：http://localhost:8080/exit
重启Jenkies：http://localhost:8080/restart
重新加载配置信息：http://localhost:8080/reload 

4. curl调用Jenkins接口
curl -X POST http://{JekinsUrl}/reload --user username:APItoken

5. Jenkins权限
以dev_base开头：dev_base.*  

6. Jenkins视图过滤
以common开头且不包含pro：^common((?!pro).)*  
以dev_common开头：^(dev_common).*  
以sonar_fb或者sonar_jly开头：^(sonar_fb|sonar_jly).*  

7. Jenkins工作原理  
构建前（也可以理解为构建时），jenkins为每个job创建单独工作空间目录，每次构建通过git将代码拉取当前工作空间目录（workspace）  
构建时，jenkins执行build脚本，脚本一般拉取代码，前端打包，后端打包，将打包后的文件发送到目标机器，重启应用  
构建后，发送邮件给触发者或者生成测试报告  