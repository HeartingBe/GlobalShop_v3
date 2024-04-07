#> global_shop:utils/string_helper/split_namespace_id/foreach
#@within global_shop:utils/string_helper/split_namespace_id
#@input storage global_shop:common splitNamespaceID.namespaceID

# @param global_shop:common originalString 即 global_shop:common splitNamespaceID.namespaceID，源字符串
# @param _length 源字符串的长度
# @param index 遍历的字符下标 +1，初始为 1，当 index > _length 越界
# @param temp.success 出参，是否找到分隔符，进入时为 -1（不成功）

# 越界退出
execute if score index glbs_common > _length glbs_common run return 0
# 判断第一个字符是不是分隔符（冒号）。如果 isEqual 为 0 说明字符值相同，即找到了分隔符
data modify storage global_shop:common temp.char set string storage global_shop:common originalString 0 1
execute store success score isEqual glbs_common run data modify storage global_shop:common temp.char set from storage global_shop:storage char.SCOPE_RESOLUTION
#如果找到冒号，跳出循环
execute if score isEqual glbs_common matches 0 run return run function global_shop:utils/string_helper/split_namespace_id/split
#否则继续
scoreboard players add index glbs_common 1
data modify storage global_shop:common originalString set string storage global_shop:common originalString 1
function global_shop:utils/string_helper/split_namespace_id/foreach