#!/usr/bin/env bash

#替换:将文本里所有aaa替换为bbb。s:search 查找并替换; g:global 全部替换; -i:implace; * 通配符。
sed -i "s/aaa/bbb/g" /tmp/*/*/demo.txt;

#末尾追加内容。$获取文件的末尾, a追加在文件末尾。
sed -i '$a\末尾追加内容' /tmp/demo.txt;

#在指定行（关键字）前面或后面添加内容。前面追加i; 后面追加a。
sed -i '/aaa/ i\指定行（关键字）前加' /tmp/demo.txt;
sed -i '/aaa/ a\指定行（关键字）后加' /tmp/demo.txt;

#在指定行（关键字）前面或后面添加内容。前面追加i; 后面追加a。
sed -i '/aaa/i 指定行（关键字）前加' /tmp/demo.txt;
sed -i '/aaa/a 指定行（关键字）后加' /tmp/demo.txt;

#在指定行（行号）前面或者后面添加内容。前面追加i; 后面追加a。
sed -i '10 i 指定行（行号）前加' /tmp/demo.txt;
sed -i '10 a 指定行（行号）后加' /tmp/demo.txt;

#/ 需用 \ 来转义
sed -i "s/<core>[0-9]<\/core>.*$/<core>2<\/core>/g" /tmp/demo.txt