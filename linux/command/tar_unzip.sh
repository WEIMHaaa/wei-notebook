#!/usr/bin/env bash

#解压demo.tar.gz到当前目录下
tar -zxvf demo.tar.gz

#去掉z,--force-local忽略特殊符号
tar -cvf demo.tar.gz demo --force-local
tar -xvf demo.tar.gz --force-local

#将xxx-oms压缩成xxx-oms.war
jar -cvfM0 xxx-oms.war xxx-oms
#将demo.war解压到指定目录demo,不加-d则默认解压到当前目录
unzip -oq demo.war -d demo


