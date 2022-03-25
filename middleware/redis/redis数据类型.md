
Redis支持五种数据类型：string（字符串），hash（哈希），list（列表），set（集合），zset(有序集合)。

# 1、String（字符串）
string 是 Redis 最基本的类型，一个 key 对应一个 value。string 类型的值最大能存储 512MB。  
设置指定key的值  
set key1 redis

获取指定key的值  
get key1

删除指定key  
del key1

# 2、Hash（哈希）
Redis hash 是一个 string 类型的 field（字段） 和 value（值） 的映射表，hash 特别适合用于存储对象。
Redis 中每个 hash 可以存储 232 - 1 键值对（40多亿）。 

同时将多个 field-value (域-值)对设置到哈希表 key 中  
hmset key2 name "zhangsan" age 18 sex "男"

获取在哈希表中指定 key 的所有字段和值  
hgetall key2

获取存储在哈希表中指定字段的值  
hget key2 name

获取所有哈希表中的字段  
hkeys key2

删除一个或多个哈希表字段  
hdel key2 name

# 3、List（列表）
Redis列表是简单的字符串列表，按照插入顺序排序。你可以添加一个元素到列表的头部（左边）或者尾部（右边）
一个列表最多可以包含 232 - 1 个元素 (4294967295, 每个列表超过40亿个元素)。  
将一个或多个值插入到列表头部  
lpush key3 my  
lpush key3 name  
lpush key3 is zyx  

获取列表指定范围内的元素  
lrange key3 0 10


# 4、Set（集合）
Redis的Set是string类型的无序集合。  
集合是通过哈希表实现的，所以添加，删除，查找的复杂度都是O(1)。  
add key4 my  
add key4 name  
add key4 is
smembers key4  

# 5、zset(sorted set：有序集合)
Redis zset 和 set 一样也是string类型元素的集合，且不允许重复的成员。  
不同的是每个元素都会关联一个double类型的分数。redis正是通过分数来为集合中的成员进行从小到大的排序。
zset的成员是唯一的，但分数(score)却可以重复。  
zadd key5 1 my  
zadd key5 2 name  
zadd key5 2 is
zrange key5 0 10  
