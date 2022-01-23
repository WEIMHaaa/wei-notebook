#Linux系统如何在命令行创建以当前日期命名的目录或文件:https://mp.weixin.qq.com/s/j5_at5zcBx0Au9RhtvTh2A
#在Linux中创建以年-月-日形式的当前日期命名的目录或文件
#想要用当前日期创建目录，可以使用如下的命令：

mkdir $(date +"%Y-%m-%d")
mkdir "$(date +"%Y-%m-%d")"