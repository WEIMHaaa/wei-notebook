[TOC]

---

### 1、基本配置
- git config user.name                    #git查看用户名和邮箱
- git config user.email
- git config --global user.name "wmh"     #git更改用户和邮箱
- git config --global user.email "666@qq.com"


### 2、创建本地库
- mkdir learngit                       #创建文件夹
- cd learngit                          #进入文件夹
- git init                             #初始化本地仓库，如果没看见.git目录，使用ls -ah可见，注：将隐藏文件设置可见
- touch test.txt                       #创建test.txt文件
- git add test.txt文件                  #提交文件到暂存区
- git commit -m "第一次提交test.txt文件"  #提交文件到本地仓库
- git log                               #查看提交过程


### 3、Git工作流转
- git add <file/dir>                      #工作区 > 暂存区
- git commit -m "暂存区 -> 本地仓库"        #暂存区 > 本地仓库
- git push origin master                  #本地仓库 > 远程仓库（本地master分支推送到远程origin仓库）
- git checkout -- <file>                  #工作区 < 暂存区（暂存区文件内容覆盖工作区文件内容）
- git reset HEAD <file>                   #暂存区 < 本地仓库（本地仓库文件内容覆盖暂存区文件内容）
- git clone <git_url>                     #本地仓库 < 远程仓库


### 4、打tag
- git tag -a testtag -m "test"            #创建tag
- git tag -l                              #查看tag
- git tag -d testtag                      #删除tag