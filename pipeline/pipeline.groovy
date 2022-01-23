/**
 *pipeline的代码定义了整个构建过程，通常包括构建应用程序，测试然后交付应用程序的阶段，下面是pipeline语法中的基本概念：
 *Stage 一个pipeline可以划分成若干个stage，每个stage代表一组操作，例如build、deploy。注意，stage是一个逻辑分组的概念，可以跨多个node或agent
 *Node 一个node就是一个jenkins节点，或者是master，或者是agent，是执行step的具体运行环境
 *Stepstep是最基本的操作单元，小到创建一个目录，大到构建一个docker镜像，由各类jenkins plugin提供，例如sh make
 *
 *声明式Pipeline是Jenkins Pipeline的一个相对较新的补充，它在Pipeline子系统之上提出了一种更为简化和有意义的语法，包括：
 *提供比Scripted Pipeline语法更丰富的语法功能
 *声明式Pipeline代码更容易编写和理解
 *所有有效的声明性Pipeline必须包含在一个pipeline块内，例如：
 */

pipeline {
    /* insert Declarative Pipeline here */
}