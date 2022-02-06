#!/bin/bash

#deploy.sh

app_name=${1}                   #项目名称,例:Learn-Java
env_name=${3}                   #环境名称,例:test1
time=`date +%Y-%m-%d_%H:%M:%S`  #时间

#检查上一条命令是否执行成功
shell_check(){
    if [ $? -eq 0 ];then
        echo -e "\033[32m${time} 2|8、上一条命令执行成功, 继续\033[0m"
    else
        echo -e "\033[31m${time} 2|8、上一条命令执行失败, 退出\033[0m"
        exit 1
    fi
}

#部署应用服务
deploy_app(){
    echo -e "\033[32m${time} 1、解压${app_name}.tar.gz\033[0m"
    cd /tmp/${app_name}/target/ && tar -xzvf ${app_name}.tar.gz

    shell_check

    echo -e "\033[32m${time} 3、停止${app_name}服务\033[0m"
    var=`cd /app/${app_name}/bin/ && su ${app_name} stop.sh`
    if [[ $var = *alive* ]];then
        echo -e "\033[31m${time} $var 无法正常停止应用进程,请前往服务器进行排查\033[0m"
        exit 1
    else
        echo -e "\033[32m${time} $var ,继续\033[0m"
    fi

    echo -e "\033[32m${time} 4、覆盖代码\033[0m"
    rsync -r  /tmp/${app_name}/target/conf/ /app/${app_name}/config
    rsync -r --delete /tmp/${app_name}/target/lib/ /app/${app_name}/lib

    echo -e "\033[32m${time} 5、拉取disconf\033[0m"
    cd /app/${app_name}/config && wget -O configs.tar.gz http://disconf.demo.com/api/config/downConfigs?app=${app_name}'&'env_name=${env_name}'&'version=1.0.0 && tar -xvf configs.tar.gz && rm -rf configs.tar.gz

    echo -e "\033[32m${time} 6、分组赋权\033[0m"
    cd /app && chown -R ${app_name}:coreapp ${app_name}

    echo -e "\033[32m${time} 7、重启服务\033[0m"
    cd /app/${app_name}/bin/ && su ${app_name} start.sh

    shell_check

    pid=`ps aux | grep ${app_name} | grep -v grep | awk '{print $2}'`
    if [ "${pid}" ]; then
        echo -e "\033[32m${time} 9、${app_name} core ${pid} 启动成功\033[0m"
    else
        echo -e "\033[31m${time} 9、${app_name} core ${pid} 启动失败\033[0m"
        exit 1
    fi

    echo -e "\033[32m${time} 10、查看日志\033[0m"
    cd /app/${app_name}/log/ && tail -n 200 stdout.log

    echo -e "\033[32m${time} 11、删除/tmp目录下旧压缩包,避免再次部署代码重复\033[0m"
    cd /tmp && rm -rf ${app_name}
}

deploy_app