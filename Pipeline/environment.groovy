/**
 * 该environment指令指定一系列键值对，这些对值将被定义为所有步骤的环境变量或阶段特定步骤，具体取决于environment指令位于pipeline中的位置。
 */

pipeline {
    agent any

    environment {
        SONAR_SERVER = 'http://127.0.0.1:9000'
        JAVA_HOME    = '/data/jdk'
    }

    stages {
        stage('Build') {
            steps {
                sh 'printenv'
                echo 'environment：设置环境变量'
            }
        }
    }
}