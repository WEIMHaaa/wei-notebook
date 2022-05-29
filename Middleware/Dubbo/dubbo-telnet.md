### 1、连接dubbo服务
telnet \[ip] [端口]
举例：telnet 127.0.0.1 66666  
回车后如果显示 ：Escape character is '^]'.  
代表连接成功，正在监听dubbo服务。  


### 2、查看dubbo服务
使用ls命令，查看查看该ip端口下的所有服务名称  
查看该ip端口下所有接口：ls  
查看该ip端口下所有接口的详细信息：ls -l  
查看某个接口下的方法：ls [接口名]  
查看某个接口下的方法的详细信息：ls -l [接口名]  
举例：ls -l com.dubbo.demo.UserService  


### 3、调用接口方法
invoke [完整包名].[接口名].方法名  
举例：invoke com.dubbo.demo.UserService.findUserById(1L)  
如果对象里面还有对象，可能会报转换对象出错，dubbo默认会序列化为JSONObject对象，里面也指定class即可，如：invoke ls -l com.dubbo.demo.UserService.queryMethodDemo({"class":"com.demo.demoRequest","custNo":"123456","type":1})   


### 4、count统计服务调用情况
统计1次服务任意方法的调用情况：count XxxService  
统计10次服务任意方法的调用情况：count XxxService 10  
统计1次服务方法的调用情况：count XxxService xxxMethod  
统计10次服务方法的调用情况：count XxxService xxxMethod 10   


### 5、trace跟踪方法
跟踪 1 次服务任意方法的调用情况：trace XxxService    
跟踪 10 次服务任意方法的调用情况：trace XxxService 10  
跟踪 1 次服务方法的调用情况：trace XxxService xxxMethod     
跟踪 10 次服务方法的调用情况：trace XxxService xxxMethod 10    


### 6、显示汇总状态
该状态将汇总所有资源的状态，当全部OK时则显示OK，只要有一个ERROR则显示ERROR，只要有一个WARN则显示WARN：status -l
