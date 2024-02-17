#> global_shop:logic/item_data/parse_enchantment

# 可能没有附魔
execute unless data storage global_shop:common g_itemData.tag.Enchantments run return 0

# 遍历并附魔列表
data modify storage global_shop:common temp.enchantments set from storage global_shop:common g_itemData.tag.Enchantments
function global_shop:logic/item_data/parse_enchantment/foreach