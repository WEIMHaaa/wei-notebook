### git知识点
1. repository
2. config
3. init
4. clone
5. fetch
6. pull
7. commit
8. push
9. branch
10. head
11. tag
12. merge
13. conflict
14. diff
15. log
16. show
17. status


### https和ssh的区别
1. https
- clone项目：使用https方式时, 没有要求, 可以直接克隆下来
- push项目：使用https方式时, 需要验证用户名和密码
- 端口：一般使用443端口
- 安全：通过用户名/密码授权, 可用性比较高
- 速度：速度相较快点, 一般企业防火墙会打开80和443这两个http/https协议的端口, 很方便；而对于ssh来说, 企业防火墙很可能没打开22端口
- 总结：https利于匿名访问, 适合开源项目, 可以方便被别人克隆和读取(但没有push权限)

2. ssh
- clone项目：使用ssh方式时, 需要配置ssh key, 即要将生成的ssh密钥对的公钥上传至服务器
- push项目：使用ssh方式时, 不需要验证用户名和密码, 之前配置过ssh key, (如果你没设置密码) 直接push即可
- 端口：一般使用22端口
- 速度：速度相较慢点
- 总结：ssh不利于匿名访问, 比较适合内部项目, 只要配置了ssh公钥极可自由实现clone和push操作


### git fetch和git pull的区别
1. 相同点
首先在作用上他们的功能是大致相同的, 都是起到了更新代码的作用。

2. 不同点
- git fetch：git fetch会将数据拉取到本地仓库, 它并不会自动合并或修改当前的工作。 
- git pull：git pull是从远程获取最新版本并merge到本地, 会自动合并或修改当前的工作。


### Git回退代码
1. 查看commits记录：
git reflog

2. 查看commits记录(详细)：
git log

3. 撤销已经push的commit  
1、git log拿到要回退的版本号：3d0c40d40074a2ba0c4756d7d1697983c398bd0f  
2、git reset –-soft <版本号> , 如 git reset --soft 3d0c40d40074a2ba0c4756d7d1697983c398bd0f , 重置至指定版本的提交, 达到撤销提交的目的；回退本地代码：git reset --hard <版本号>  
3、git push origin master --force , 强制提交当前版本号  
问题：当我们有时候回滚了代码, 想强制push到远程仓库的时候, git push origin --force, 会报如下错误：You are not allowed to force push code to a protected branch on this project  
解决：如果用的是gitlab版本库, 这说明gitlab对仓库启用了保护, 需要在仓库中设置一下：进入项目gitlab网页版: 设置（setting）> 版本库（repo）> 保护分支（把保护的分支选择 unprotected）

4. 合并commit
git rebase进行git压缩：git rebase -i HEAD~2 对最近的3个commit进行rebase操作  
对于 commit 合并可以使用 squash、fixup 指令,   
squash：将该commit的注释添加到上一个commit注释中  
fixup：是放弃当前commit的注释  
drop：删除当前commit(drop和fixup的区别是啥？)  


### git stash
1. stash的原理：将本地没提交的内容(git commit的内容不会被缓存, 但git add的内容会被缓存)进行缓存并从当前分支移除，缓存的数据结构为堆栈，先进后出。  
2. 场景：在A分支修改文件, 但不想commit, 使用git stash, git checkout B分支之后, 修改的文件并不会带到B分支, 再git checkout A分支, 使用git stash pop找出来。
3. stash的参数详解：
- git stash与git stash save是一样的, 将没有提交的内容缓存并移除，而这条缓存名称为最新一次提交的commit -m的内容，如果没有本地提交则是拉远程仓库是的commit内容。
- git stash save "xxx"：加上自己的注解进行缓存。
- git stash list：返回缓存的列表。
- git stash pop：将堆栈中最新的内容pop出来应用到当前分支上，且会删除堆中的记录。
- git stash drop [名]：删除单个缓存 举例git stash drop stash@{0}。
- git stash clear：全清。
- git stash show [名]：显示与当前分支差异 举例git stash show stash@{0} 加上-p可以看详细差异。
- git stash branch：指定或最新缓存创建分支。