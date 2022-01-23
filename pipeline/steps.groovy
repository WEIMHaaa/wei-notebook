/**
 * 包含一个或多个阶段指令的序列，该stages部分是Pipeline描述的大部分“工作”的位置。
 * 建议stages至少包含至少一个阶段指令，用于连续交付过程的每个离散部分，如构建，测试和部署。
 */

pipeline {
    agent any
    stages {
        stage('stages') {
            steps {
                echo '这是一个步骤，是stage里面的一个步骤'
            }
        }
    }
}