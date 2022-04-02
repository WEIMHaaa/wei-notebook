#!/usr/bin/env bash

#1、curl url：获取页面内容或接口响应(get请求)
curl https://github.com/WEIMHaaa/Learn-Java
curl https://gitee.com/weimenghua/Learn-Java

#2、curl -I url：获取请求页面或接口的请求头信息(get请求)
curl -I https://github.com/WEIMHaaa/Learn-Java
curl -I https://gitee.com/weimenghua/Learn-Java

#3、curl -X POST：调用post接口
curl -H "Content-Type:application/json" -X POST -d '{"id":"123456","username": "username123","password": "123456"}' 'http://127.0.0.1:9999/demo/add'

