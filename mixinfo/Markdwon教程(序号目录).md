[TOC]

---

# 1. 标题1（前面一个# 1.号）
## 1.1. 标题2（前面两个#号）
### 1.1.1. 标题3（前面三个#号）
#### 1.1.1.1. 标题4（前面四个#号）

一级标题
===
二级标题
---

**文本加粗**
*斜体文本*
_斜体文本_
<u>带下划线文本</u>
~~删除文本~~
> 引用文本

1. 第一项
2. 第二项
3. 第三项

* 第一项
* 第二项
* 第三项

+ 第一项
+ 第二项
+ 第三项

- 第一项
- 第二项
- 第三项

1. 第一项：
    - 第一项嵌套的第一个元素
    - 第一项嵌套的第二个元素
2. 第二项：
    - 第二项嵌套的第一个元素
    - 第二项嵌套的第二个元素

[百度链接](https://www.baidu.com)   
[本地链接](../README.md)

https://www.baidu.com  
<https://www.baidu.com>

![avatar](../docs/嘎嘎软件测试.png)

换行1<br>换行2<br>
行尾双空格换行1  
行尾双空格换行2  

***
---
___


| 标题1  | 标题2  | 标题3  |
| :--: | :--: | :--- |
| 文本1  | 文本2  | 文本3  |
| 文本4  | 文本5  | 文本6  |

-: 设置内容和标题栏居右对齐。  
:- 设置内容和标题栏居左对齐。  
:-: 设置内容和标题栏居中对齐。  

快捷键
1. 返回Typora顶部：Ctrl+Home
2. 返回Typora底部：Ctrl+End
3. 下划线：ctrl + u
4. 删除线：alt + shift +5
5. 字体倾斜：ctrl + i
6. 引用：> + space或者ctrl + shift + q
7. 插入链接：ctrl+k

Markdown自动生成目录  
方法一 ：在文章的最顶端输入 [toc] 即可(在Typora可以, 在IDEA需使用方法二)  
方法二 ：npm install doctoc -g, 切换到对应目录执行：执行 doctoc Markdwon教程.md 文件

IDEA设置Markdown样式和Typora一样：File > Settings > Languages & Frameworks > Markdown > Custom CSS 添加如下脚本：
```
body {
    font-size: 15px;
    color:#333;
    background:#fff;
    font-family: Helvetica, Arial, "PingFang SC", "Microsoft YaHei", "WenQuanYi Micro Hei", "tohoma,sans-serif";
    margin: 0;
    padding: 10%;
}
h1 {
    font-size: 2.2em;
    font-weight: 700;
    line-height: 1.1;
    padding-top: 16px;
    margin-bottom: 4px;
}
h2, h3, h4, h5, h6 {
    line-height: 1.5em;
    margin-top: 2.2em;
    margin-bottom: 4px;
}
h2 {
    font-size: 1.4em;
    margin: 40px 10px 20px 0;
    padding-left: 9px;
    border-left: 6px solid #ff7e79;
    font-weight: 700;
    line-height: 1.4;
}
h3 {
    font-weight: 700;
    font-size: 1.2em;
    line-height: 1.4;
    margin: 10px 0 5px;
    padding-top: 10px;
}
h4 {
    font-weight: 700;
    text-transform: uppercase;
    font-size: 1.1em;
    line-height: 1.4;
    margin: 10px 0 5px;
    padding-top: 10px
}
h5, h6 {
    font-size: .9em;
}
h5 {
    font-weight: bold;
    text-transform: uppercase;
}
h6 {
    font-weight: normal;
    color: #AAA;
}
img {
    width: 100%;
    border-radius: 5px;
    display: block;
    margin-bottom: 15px;
    height: auto;
}
dl, ol, ul {
    margin-top: 12px;
    margin-bottom: 20px;
    padding-left: 5%;
    line-height: 1.8;
}
p {
    margin: 0 0 20px;
    padding: 0;
    line-height: 1.8;
}
a {
    color: #f22f27;
    text-decoration: none;
}
a:hover {
    color: #f55852;
    text-decoration: underline;
}
a:focus {
    outline-offset: -2px;
}
blockquote {
    border-left: 4px solid #42b983;
    margin: 10px 0;
    padding: 10px 0px 10px 15px;
    color: #777;
    background-color: rgba(66, 185, 131, .1);
}
strong, dfn {
    font-weight: 700;
}
em, dfn {
    font-style: italic;
    font-weight: 400;
}
del {
    text-decoration: line-through;
}
/*code {font-size:90%;}*/
 
/*pre {text-align:left; overflow-x: scroll; color: #257fa0; background: #f6f6f6; padding: 10pt 15pt; border-radius: 3px; border: solid 1px #e2e2e2;}*/
 pre {
    margin: 0 0 10px;
    font-size: 13px;
    line-height: 1.42857;
    word-break: break-all;
    word-wrap: break-word;
    border-radius: 4px;
    white-space: pre-wrap;
    display: block;
    background: #f8f8f8;
    padding: 10px 20px;
    border: none;
    margin-bottom: 25px;
    color: #666;
    font-family: Courier, sans-serif;
}
code {
    color: #c7254e;
    background-color: #f9f2f4;
    border-radius: 4px;
    font-family: Menlo, Monaco, Consolas, "Courier New", monospace;
    padding: 2px 4px;
    font-size: 90%;
}
p > code {
    color: #c7264e;
    background-color: #f9f2f4;
    font-size: .95em;
    border-radius: 3px;
    -moz-border-radius: 3px;
    -webkit-border-radius: 3px;
}
figure {
    margin: 1em 0;
}
figcaption {
    font-size: 0.75em;
    padding:0.5em 2em;
    margin-bottom: 2em;
}
figure img {
    margin-bottom: 0px;
}
hr {
    margin-top: 20px;
    margin-bottom: 20px;
    border: 0;
    border-top: 1px solid #eee;
}
ol p, ul p {
    margin-bottom: 0px;
}
li {
    margin-bottom: 0.75em;
    margin-top: 0.75em;
}
ol#footnotes {
    font-size: 0.95em;
    padding-top: 1em;
    margin-top: 1em;
    margin-left: 0;
    border-top: 1px solid #eaeaea;
    counter-reset: footer-counter;
    list-style: none;
    color: #555;
    padding-left: 5%;
    margin: 20px 0;
}
ol#footnotes li {
    margin-bottom: 10px;
    margin-left: 16px;
    font-weight: 400;
    line-height: 2;
    list-style-type: none;
}
ol#footnotes li:before {
    content: counter(footer-counter)". ";
    counter-increment: footer-counter;
    font-weight: 800;
    font-size: .95em;
}
@keyframes highfade {
    0% {
        background-color: none;
    }
    20% {
        background-color: yellow;
    }
    100% {
        background-color: none;
    }
}
@-webkit-keyframes highfade {
    0% {
        background-color: none;
    }
    20% {
        background-color: yellow;
    }
    100% {
        background-color: none;
    }
}
a:target, ol#footnotes li:target, sup a:target {
    animation-name: highfade;
    animation-duration: 2s;
    animation-iteration-count: 1;
    animation-timing-function: ease-in-out;
    -webkit-animation-name: highfade;
    -webkit-animation-duration: 2s;
    -webkit-animation-iteration-count: 1;
    -webkit-animation-timing-function: ease-in-out;
}
a:target {
    border:0;
    outline: 0;
}
animation-iteration-count: 1;
 -webkit-animation-timing-function: ease-in-out;
 
}
a:target {
    border:0;
    outline: 0;
}
tion-iteration-count: 1;
 -webkit-animation-timing-function: ease-in-out;
 
}
a:target {
    border:0;
    outline: 0;
}

table {
  padding: 0;
  border-collapse: collapse;
  border-spacing: 0;
  font-size: 1em;
  font: inherit;
  border: 0;
  margin: 0 auto;
}
 
tbody {
  margin: 0;
  padding: 0;
  border: 0;
}
 
table tr {
  border: 0;
  border-top: 1px solid #CCC;
  background-color: white;
  margin: 0;
  padding: 0;
}
 
table tr:nth-child(2n) {
  background-color: #F8F8F8;
}
 
table tr th, table tr td {
  font-size: 16px;
  border: 1px solid #CCC;
  margin: 0;
  padding: 5px 10px;
}
 
table tr th {
  font-weight: bold;
  border: 1px solid #ccc;
  background-color: #f8f8f8;
}
```