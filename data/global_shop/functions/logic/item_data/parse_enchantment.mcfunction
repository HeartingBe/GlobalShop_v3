#> global_shop:logic/item_data/parse_enchantment

# 可能没有附魔
execute unless data storage global_shop:common g_itemData.tag.Enchantments run return 0

# 遍历并附魔列表
data modify storage global_shop:common temp.enchantments set from storage global_shop:common g_itemData.tag.Enchantments
function global_shop:logic/item_data/parse_enchantment/foreach

# 添加新行
function global_shop:logic/item_data/to_string/add_new_line

# 物品名字写入新行
data modify storage global_shop:common g_text.value[-1].extra prepend string storage global_shop:common g_itemData.tag.display.Name 1 -1