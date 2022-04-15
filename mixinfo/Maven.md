### 一、Maven仓库分类
Maven仓库分为本地仓库，私服仓库，远程仓库。  
当我们在pom文件中依赖了一个jar包，maven会先去本地仓库加载，如果本地仓库没有回去maven私服找，如果maven私服也没有，maven私服会从远程仓库下载到私服仓库，然后再返回给本地仓库。


### 二、一方库、二方库、三方库是什么？
一方库：本工程中的各模块的相互依赖。  
二方库：公司内部的依赖库，一般指公司内部的其他项目发布的jar包。  
三方库：公司之外的开源库， 比如apache、ibm、google等发布的依赖。


### 三、为什么要搭建maven私服
服务器下载配置直接找到私服，不需要连接外网，走局域网，速度快，安全性高。  
每次要下载依赖无需重复从远程仓库下载，从私服下载，速度快。  
公司内部的jar包无法发布到中央仓库，也不能暴露给外部，要实现共享就需要搭建maven私服仓库。


### 四、第三方仓库代理
在本地将我们maven的远程仓库指向了我们公司私服。当我们要下载私服中没有的依赖时，会先去中央仓库找，中央仓库也不存在，这时maven私服就到第三方代理仓库去下载。