-- trim([remstr from] str)函数用于返回删除字符串 str 两侧所有 remstr 字符串之后的子串，remstr 默认为空格
select trim( ' 左右有空格 '), trim( '-'from'--左右有空格--' );

-- lpad(str,len,padstr)函数表示字符串 str 的左侧使用 padstr 进行填充，直到长度为 len
-- rpad(str,len,padstr)函数表示在字符串 str 的右侧使用 padstr 进行填充，直到长度为 len
select lpad( 123, 6, '0'), lpad( 123, 2, '0'), rpad( 123, 6, '0'), rpad( 123, 2, '0');

-- repeat(str,count)函数用于将字符串 str 复制 count 次并返回结果
select repeat( '', 5);