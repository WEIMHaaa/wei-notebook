#!/usr/bin/env bash

#00 5 * * *
#${BUILD_NUMBER}-${BUILD_USER}-${BUILD_TIMESTAMP}

#同步demo delete=yes: 全量同步, 保持2边数据一致; 不加则增量同步
ansible jenkins-node -m synchronize -a "src=/jenkins_workspace/backup_thin/ dest=/jenkins_workspace/backup_thin/ delete=yes"
