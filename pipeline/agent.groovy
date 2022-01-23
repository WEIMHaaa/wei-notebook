/**
 * @author weimenghua* @date 2020/11/22 11:40
 * agent部分指定整个Pipeline或特定阶段将在Jenkins环境中执行的位置，具体取决于该agent 部分的放置位置。该部分必须在pipeline块内的顶层定义 ，但阶段级使用是可选的。
 * agent 参数：any/none/label/node/docker/dockerfile
 */

//1、any：在任何可用的机器上执行pipeline
agent any

//2、node：当在pipeline顶层使用none时，将不会为整个Pipeline运行分配全局代理，每个stage需要指定相应的agent
agent none

//3、label：指定slave1的节点机器运行该stage或者pipeline
agent {
    node { label "master" }
}
agent {
    label 'jenkins-node1'
}

//4、node：指定slave1的节点机器运行该stage或者pipeline
agent {
    node {
        label ' this is k8sapi-label'
        customWorkspace '/some/other/path'
    }
}

//5、docker：docker 执行Pipeline，或阶段执行，用给定的容器将被动态地供应一个节点预先配置成接受基于Docker-based Pipelines，或匹配的任选定义的节点上label的参数。
agent {
    docker {
        image 'maven:3-alpine'
        label 'my-defined-label'
        args '-v /deploy_demo:/deploy_demo'
    }
}