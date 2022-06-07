### 生成目录结构
#### 方式一  tree
用法：    
tree [drive][path] [/F] [/A]  
/F 显示所有目录及目录下的所有文件，省略时，只显示目录，不显示目录下的文件  
/A 使用ASCII字符，而不使用扩展字符  
举例：  
1. tree //展示当前目录
2. tree D:\software\IdeaProjects\wei-notebook //展示指定目录
3. tree D:\software\IdeaProjects\wei-notebook > D:\software\IdeaProjects\wei-notebook\目录结构.txt //指定目录存储到指定文件
4. tree D:\software\IdeaProjects\wei-notebook /A > D:\software\IdeaProjects\wei-notebook\目录结构.txt //指定目录存储到指定文件
5. tree D:\software\IdeaProjects\wei-notebook /F > D:\software\IdeaProjects\wei-notebook\目录结构.txt //指定目录及文件存储到指定文件
6. tree D:\software\IdeaProjects\wei-notebook -i "公众号资料" //忽略目录
7. tree -I "node_modules" //排除文件夹
8. tree -I "node_modules|cache|test_*" //排除多个文件夹
9. tree -L 2 //只看两级目录
10. tree -L 1 > 目录结构.txt
注：windows下的tree命令被阉割了，只有/F和/A命令，为使用更加完整的功能，可以使用Tree for Windows工具。
在[Tree for Winodws](http://gnuwin32.sourceforge.net/packages/tree.htm) 页面，下载二进制文件Binaries zip。
解压压缩包，找到压缩包内的bin目录，将bin目录下的tree.exe复制到git文件夹Git\usr\bin目录下，将tree.exe粘贴到该目录下，安装完成，进入git bash即可使用。

#### 方式二 treer
安装treer：npm install -g treer  
用法：
1. treer -d <指定路径>
2. treer -e <导出路径>
3. treer -i <"文件名，支持正则表达式/regex/">  //-i 是忽略不需要的目录，多个文件用竖线 | 隔开,前后要用斜线 / 包括
举例：
treer -d D:\software\IdeaProjects\wei-notebook -e D:\software\IdeaProjects\wei-notebook\目录结构.txt -i "/.git|.idea|lib|公众号资料|README.md/"  
treer -d D:\software\IdeaProjects\Learn-Java -e D:\software\IdeaProjects\Learn-Java\目录结构.txt -i "/.git|.idea|lib|公众号资料|README.md/"  


### 构造文件
用法：fsutil file createNew <filename> <length>  #命令中指定文件大小的单位是byte  
1 byte = 8 bit  
1 KB = 1024 byte  
1 MB = 1024 KB  
1 GB = 1024 MB  
1G = 1024 * 1024 *1024 = 1073741824 byte  

例子1：fsutil file createnew d:\demo.jpg 1  
例子2：fsutil file createnew d:\demo.txt 0


