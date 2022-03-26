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