#> global_shop:logic/item_data/parse_enchantment

# 遍历附魔列表
data remove storage global_shop:common temp
data modify storage global_shop:common temp.enchantments set from storage global_shop:common g_itemData.tag.Enchantments
execute if data storage global_shop:common temp.enchantments[0] run function global_shop:logic/item_data/parse_enchantment/foreach