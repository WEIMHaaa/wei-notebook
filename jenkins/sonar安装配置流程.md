1. 安装sonar插件
2. 系统设置->全局设置->SonarQube Scanner指定sonar的安装位置：/home/sonar/scanner
3. 系统设置->配置->SonarQube servers执行sonar的URL
4. 凭据添加sonar密码
5. 每个job编译时增加：clean compile -U $SONAR_MAVEN_GOAL
6. Jenkins视图过滤(以sonar_fb或者sonar_jly开头)：^(sonar_fb|sonar_jly).*