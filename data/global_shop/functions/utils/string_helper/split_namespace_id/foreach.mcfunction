#> global_shop:utils/string_helper/split_namespace_id/foreach
#@within global_shop:utils/string_helper/split_namespace_id
#@input storage global_shop:args splitNamespaceID.namespaceID

execute if score index glbs_common > _length glbs_common run return 0
data modify storage global_shop:common temp.char set string storage global_shop:common originalString 0 1
execute store success score isEqual glbs_common run data modify storage global_shop:common temp.char set from storage global_shop:const char.":"
#如果找到冒号，跳出循环
execute if score isEqual glbs_common matches 0 run return run function global_shop:utils/string_helper/split_namespace_id/split
#否则继续
scoreboard players add index glbs_common 1
data modify storage global_shop:common originalString set string storage global_shop:common originalString 1
function global_shop:utils/string_helper/split_namespace_id/foreach