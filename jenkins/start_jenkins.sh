#!/usr/bin/env bash

#Jenkins下载地址
http://updates.jenkins-ci.org/download/war/

cd /data;nohup java -Xmx3072m -Xms3072m -Xmn768m -XX:PermSize=128m -XX:MaxPermSize=256M -Xss512k -jar jenkins.war &