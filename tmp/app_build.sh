#!/bin/bash

#app_build.sh

app_name=${1}                   #项目名称,例:Learn-Java
group_name=${2}                 #分组名称,例:best
env_name=${3}                   #环境名称,例:test1
time=`date +%Y-%m-%d_%H:%M:%S`  #时间

#检测前端编译是否成功
shell_check(){
    if [ $? -eq 0 ];then
        echo -e "\033[32m${time} ===前端编译成功，继续===\033[0m"
    else
        echo -e "\033[31m${time} ===前端编译失败，请排查问题再发布===\033[0m"
        exit 1
    fi
}

if [[ ${env_name} = "请选择" ]] ; then
    echo -e "\033[31m${time} 请选择正确环境!\033[0m"
    exit 1
elif [[ ${env_name} = "test1" || ${env_name} = "test2" ]] ; then
    echo -e "\033[32m${time} ${group_name} ${app_name} ${env_name}  前端编译 cnpm install\033[0m"
    cd /jenkins_workspace/${group_name}_${app_name}/${app_name}-view/
    cnpm install
    echo -e "\033[32m${time} ${group_name} ${app_name} ${env_name}\033[0m"
    npm run build:test1
    shell_check
    echo -e "\033[32m${time} cp /jenkins_workspace/deploy.sh to /jenkins_workspace/${group_name}_${app_name}\033[0m"
    cp /jenkins_workspace/deploy.sh  /jenkins_workspace/${group_name}_${app_name}
else
    echo -e "\033[31m${time} 请输入正确参数!\033[0m"
fi