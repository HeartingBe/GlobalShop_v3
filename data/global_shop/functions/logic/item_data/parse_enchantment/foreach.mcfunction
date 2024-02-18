#> global_shop:logic/item_data/parse_enchantment/foreach
# 遍历附魔列表

execute store result score length glbs_common run data get storage global_shop:common temp.enchantments
execute if score length glbs_common matches ..0 run return 0

# 开始翻译
function global_shop:logic/item_data/parse_enchantment/parse

data remove storage global_shop:common temp.enchantments[0]
function global_shop:logic/item_data/parse_enchantment/foreach

