#> global_shop:logic/item_data/parse_enchantment/get_translate_string
#查表
scoreboard players set isntDefault glbs_common 1
execute store success score noError glbs_common run function global_shop:logic/item_data/parse_enchantment/macro/find_translate_key with storage global_shop:common temp.enchantments[0]
execute if score noError glbs_common matches 0 run return run data modify storage global_shop:common temp.translate_key set from storage global_shop:common temp.enchantments[0].id
execute if score temp1 glbs_common matches 1 run return run scoreboard players set isntDefault glbs_common 0

#没有找到键值对，开始遍历字符串
data modify storage global_shop:args splitNamespaceID.namespaceID set from storage global_shop:common temp.enchantments[0].id
function global_shop:utils/string_helper/split_namespace_id

#拼接翻译字符串
function global_shop:logic/item_data/parse_enchantment/macro/concat_id_string with storage global_shop:common return

data modify storage global_shop:common temp.id set from storage global_shop:common temp.enchantments[0].id
#存表
function global_shop:logic/item_data/parse_enchantment/macro/set_pair with storage global_shop:common
#对于默认的minecraft命名空间，要存两份
execute store success score isntDefault glbs_common run data modify storage global_shop:common return.namespace set value "minecraft"
execute if score isntDefault glbs_common matches 0 run return 0
data modify storage global_shop:common temp.enchantments[0].id set from storage global_shop:common return.id
function global_shop:logic/item_data/parse_enchantment/macro/set_pair with storage global_shop:common