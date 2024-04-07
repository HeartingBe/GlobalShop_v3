#> global_shop:logic/item_data/parse_enchantment/foreach
# 遍历附魔列表

# 递归函数，每执行一次，解析 enchantments[0]，然后去掉第一项
# 如果 enchantments 列表不为空，继续解析

# 翻译第一项（id 如果是空字符串，不翻译）
execute store result score temp glbs_common run data get storage global_shop:common temp.enchantments[0].id
execute if score temp glbs_common matches 1.. run function global_shop:logic/item_data/parse_enchantment/parse

# 去掉第一项，如果 enchantments 列表不为空，继续解析
data remove storage global_shop:common temp.enchantments[0]
execute if data storage global_shop:common temp.enchantments[0] run function global_shop:logic/item_data/parse_enchantment/foreach