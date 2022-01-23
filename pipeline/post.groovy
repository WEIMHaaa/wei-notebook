/**
 * 条件：
 * always：无论Pipeline运行的完成状态如何都会运行。
 * changed：只有当前Pipeline运行的状态与先前完成的Pipeline的状态不同时，才能运行。
 * failure：仅当当前Pipeline处于“失败”状态时才运行，通常在Web UI中用红色指示表示。
 * success：仅当当前Pipeline具有“成功”状态时才运行，通常在具有蓝色或绿色指示的Web UI中表示。
 * unstable：只有当前Pipeline具有“不稳定”状态，通常由测试失败，代码违例等引起，才能运行。通常在具有黄色指示的Web UI中表示。
 * aborted：只有当前Pipeline处于“中止”状态时，才会运行，通常是由于Pipeline被手动中止。通常在具有灰色指示的Web UI中表示。
 * cleanup：无论管道或stage的状态如何，在跑完所有其他的post条件后运行此条件下的post步骤。
 */

//构建后操作
post {
    unstable {
        emailext body: '$DEFAULT_CONTENT', postsendScript: '$DEFAULT_POSTSEND_SCRIPT', presendScript: '$DEFAULT_PRESEND_SCRIPT', recipientProviders: [requestor()], replyTo: '$DEFAULT_REPLYTO', subject: '$DEFAULT_SUBJECT', to: '$DEFAULT_RECIPIENTS'
    }
    failure {
        emailext body: '$DEFAULT_CONTENT', postsendScript: '$DEFAULT_POSTSEND_SCRIPT', presendScript: '$DEFAULT_PRESEND_SCRIPT', recipientProviders: [requestor()], replyTo: '$DEFAULT_REPLYTO', subject: '$DEFAULT_SUBJECT', to: '$DEFAULT_RECIPIENTS'        }
}
