[TOC]

---

### HTTP请求头
1. Accept: application/json, text/plain, */*
2. Accept-Encoding: gzip, deflate, br  #浏览器支持的压缩编码是 gzip 和 deflate。
3. Accept-Language: zh-CN,zh;q=0.9 #浏览器支持的语言分别是中文和简体中文，优先支持简体中文。(zh-cn表示简体中文;zh 表示中文)。q是权重系数，范围 0 =< q <= 1，q 值越大，请求越倾向于获得其“;”之前的类型表示的内容，若没有指定 q 值，则默认为1，若被赋值为0，则用于提醒服务器哪些是浏览器不接受的内容类型。
4. Cache-Control: no-cache
5. Connection: keep-alive #Connection表示客户端与服务连接类型，keep-alive表示持久连接。
6. Content-Length: 2
7. Content-Type: application/json;charset=UTF-8
8. Cookie: theme=theme_base; _ga=GA1.2.978307603.1615374702; userName=root; token=123456789; userId=root; userType=SYSADM
9. Host: www.demo.com #示请求的服务器网址
10. Origin: https://www.demo.com
11. Pragma: no-cache
12. Referer: https://www.demo.com/demo/
13. Sec-Fetch-Dest: empty
14. Sec-Fetch-Mode: cors
15. Sec-Fetch-Site: same-origin
16. User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.106 Safari/537.36 16. #User-Agent（用户代理），简称 UA，它是一个特殊字符串头，使得服务器能够识别客户端使用的操作系统及版本、CPU 类型、浏览器及版本、浏览器渲染引擎、浏览器语言、浏览器插件等。 Mozilla/5.0：Mozilla 是浏览器名，版本是 5.0；compatible（兼容的）表示平台是兼容模式；


### Content-Type内容类型
Content-Type（内容类型）字段用于服务器回应时，告诉客户端，本次数据是什么格式。

Content-Type中常见的媒体格式类型:
1. 以text开头的媒体格式类型：
- text/html：HTML格式。
- text/plain：纯文本格式。
- text/xml：XML格式。

2. 以image开头的媒体格式类型：
- image/gif：gif图片格式。
- image/jpeg：jpg图片格式。
- image/png：png图片格式。

3. 以application开头的媒体格式类型：
- application/xhtml+xml：XHTML格式。
- application/xml：XML数据格式。
- application/atom+xml：Atom XML聚合格式 。
- application/json：JSON数据格式。
- application/pdf：pdf格式 。
- application/msword： Word文档格式。
- application/octet-stream： 二进制流数据（如常见的文件下载）。
- application/x-www-form-urlencoded： form表单数据被编码为key/value格式发送到服务器（表单默认的提交数据的格式）。

4. 上传文件的媒体格式类型：
- multipart/form-data ： 需要在表单中进行文件上传时，就需要使用该格式。


### 状态码
2XX 成功
- 200 OK，表示从客户端发来的请求在服务器端被正确处理
- 204 No content，表示请求成功，但响应报文不含实体的主体部分
- 205 Reset Content，表示请求成功，但响应报文不含实体的主体部分，但是与 204 响应不同在于要求请求方重置内容
- 206 Partial Content，进行范围请求

3XX 重定向
- 301 moved permanently，永久性重定向，表示资源已被分配了新的 URL
- 302 found，临时性重定向，表示资源临时被分配了新的 URL
- 303 see other，表示资源存在着另一个 URL，应使用 GET 方法获取资源
- 304 not modified，表示服务器允许访问资源，但因发生请求未满足条件的情况
- 307 temporary redirect，临时重定向，和302含义类似，但是期望客户端保持请求方法不变向新的地址发出请求

4XX 客户端错误
- 400 bad request，请求报文存在语法错误
- 401 unauthorized，表示发送的请求需要有通过 HTTP 认证的认证信息
- 403 forbidden，表示对请求资源的访问被服务器拒绝
- 404 not found，表示在服务器上没有找到请求的资源

5XX 服务器错误
- 500 internal sever error，表示服务器端在执行请求时发生了错误
- 501 Not Implemented，表示服务器不支持当前请求所需要的某个功能
- 503 service unavailable，表明服务器暂时处于超负载或正在停机维护，无法处理请求
- 504 网关超时


### 网页加载慢的可能原因
1. 带宽不足
2. CPU或者内存占满
3. DNS解析慢
4. 加载资源慢, 因为资源在第三方站点, 资源太大等
5. 数据库发生死锁, sql查询慢
