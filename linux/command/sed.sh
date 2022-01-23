#!/usr/bin/env bash

#替换 s：search 查找并替换; g：global 全部替换; -i：implace; * 通配符
sed -i "s/test1/test2/g" /tmp/*/*/demo.txt


#追加 $获取文件的末尾 a追加在文件末尾
sed -i '$a\末尾-追加内容' /tmp/demo.txt


#指定行（关键字）前面追加 i; 后面追加 a
sed -i '/access_log/ i\前面-追加内容' /tmp/demo.txt
sed -i '/access_log/ a\后面-追加内容' /tmp/demo.txt

#在包含www.baidu.com的行前面或后面添加多一行内容www.qq.com
#匹配行前加
sed -i '/www.baidu.com/i www.qq.com' /tmp/demo.txt
#匹配行后加
sed -i '/www.baidu.com/a www.qq.com' /tmp/demo.txt

#在指定行前加
sed -i '104 i abc' /tmp/demo.txt
#在指定行后加
sed -i '104 a abc' /tmp/demo.txt


#/ 需用 \ 来转义
sed -i "s/<core>[0-9]<\/core>.*$/<core>2<\/core>/g" /tmp/demo.txt