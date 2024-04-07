#> global_shop:logic/item_data/parse_enchantment/get_translate_string
# @param global_shop:common temp.translate_key 出参，翻译键

# 本函数中构造临时宏参数使用 global_shop:common temp2

#查表，如果表中有则直接返回
scoreboard players set isntDefault glbs_common 1
scoreboard players set noError glbs_common 0
function global_shop:logic/item_data/parse_enchantment/macro/find_translate_key with storage global_shop:common temp.enchantments[0]

# 如果 noError 为 0 说明此项附魔的 id 去掉一层单引号后含有特殊字符（例如双引号提前闭合）导致宏函数实例化失败
# 例如，id:"minecraft:\"123" 会导致失败，因为去掉一层单引号会变为 minecraft:"123
# 拼入宏 enchantment."$(id)" 时会提前闭合
# 直接将翻译键设置为 id 并结束解析该项
execute if score noError glbs_common matches 0 run return run data modify storage global_shop:common temp.translate_key set from storage global_shop:common temp.enchantments[0].id

# temp1 是 find_translate_key 函数的出参，为 1 表示从 global_shop:storage enchantment 中找到了该翻译串，直接返回
execute if score temp1 glbs_common matches 1 run return run scoreboard players set isntDefault glbs_common 0

#没有找到键值对，则遍历字符串，找到其第一个冒号的位置，分隔出命名空间和 id
data modify storage global_shop:common splitNamespaceID.namespaceID set from storage global_shop:common temp.enchantments[0].id
function global_shop:utils/string_helper/split_namespace_id

#拼接翻译字符串
function global_shop:logic/item_data/parse_enchantment/macro/concat_id_string with storage global_shop:common return

#存表（将解析过的附魔存储，下次查表可以直接查到）
data remove storage global_shop:common temp2
data modify storage global_shop:common temp2.id set from storage global_shop:common temp.enchantments[0].id
function global_shop:logic/item_data/parse_enchantment/macro/set_pair with storage global_shop:common temp2
#对于默认的minecraft命名空间，要额外存储一份不带 minecraft 命名空间的翻译 key
execute store success score isntDefault glbs_common run data modify storage global_shop:common return.namespace set value "minecraft"
execute if score isntDefault glbs_common matches 0 run return 0
data modify storage global_shop:common temp2.id set from storage global_shop:common return.id
function global_shop:logic/item_data/parse_enchantment/macro/set_pair with storage global_shop:common temp2