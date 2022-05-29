流程：服务端提供接口供客户端调用。理论上是服务端提供的接口外人是不知道的，也不知道项目的真实架构流程。  
注意：服务端客户端的区分  

服务端：dubbo:service  
`<dubbo:service ref="lonApplicationService" interface="com.demo.service.LonApplicationService" group="${dubbo.protocol.group}" version="${dubbo.protocol.version}"timeout="${dubbo.protocol.timeout}"  protocol="dubbo" retries="0"/>`  

客户端：dubbo:reference  
`<dubbo:reference id="lonApplicationService" interface="com.demo.service.LonApplicationService" group="${dubbo.protocol.group}" version="${dubbo.protocol.version}" timeout="${dubbo.protocol.timeout}" registry="registry" check="false"/>`  