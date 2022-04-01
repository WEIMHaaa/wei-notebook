### 一、sql执行过程
Step1：客户端向Mysql服务器发送SQL语句。  
Step2：服务器收到后先查询”查询缓存“，如果命中，从缓存中直接返回sql执行的结果集。否则，进入Step3。  
Step3：服务器解析、预处理、优化sql执行计划，然后将处理好的sql放入查询的执行计划中。  
Step4：执行引擎通过调用”存储引擎”(如，innodb、myisam等)提供的API去执行这个计划。  
Step5：服务器返回结果给客户端。  

### 二、sql的执行顺序（优化动作越靠前越好）
1. from
2. on
3. join
4. where
5. group by
6. avg\sum...
7.  having
8. select
9. distinct
10. order by
11. limit            

### 三、SQL编写顺序
编写顺序: select distinct from join on where group by having order by limit
```
SELECT DISTINCT < select_list >
FROM < left_table > < join_type >
JOIN < right_table >
ON < join_condition >
WHERE < where_condition >
GROUP BY < group_by_list >
HAVING < having_condition >
ORDER BY < order_by_condition >
LIMIT < limit_number >
```

### 四、SQL解析顺序
解析顺序: from on join where group by having select distinct order by limit
```
FROM <left_table>
ON <join_condition> <join_type> 
JOIN <right_table>
WHERE <where_condition>
GROUP BY <group_by_list>
HAVING <having_condition>
SELECT 
DISTINCT <select_list>
ORDER BY <order_by_condition>
LIMIT <limit_number>
```
