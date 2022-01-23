#!/usr/bin/env bash

#将服务器上的文件复制到本地（另一台服务器）：
scp -r root@127.0.0.1:/tmp  /tmp

#将本地的文件复制到远程服务器上：
scp -r /tmp/ root@127.0.0.1:/tmp  # 注：无/