nginx安装目录地址 -c nginx配置文件地址（-c参数指定了要加载的nginx配置文件路径）  
/app/ngnix/sbin/nginx  -c  /app/nginx/conf/nginx.conf  

nginx  -s  start      #  启动nginx  
nginx  -s  stop       #  停止nginx  
nginx  -s  quit       #  等待工作进程处理完成后关闭  
nginx  -s  reload     #  重新加载配置文件，热重启  
nginx  -s  reopen     #  重启Nginx  
nginx  -T             #  查看当前Nginx最终的配置  
nginx  -t             #  检查配置是否有问题  