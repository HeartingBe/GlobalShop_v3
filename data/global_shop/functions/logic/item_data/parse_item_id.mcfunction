# 物品可能没有自定义名称
execute unless data storage global_shop:common g_itemData.tag.display.Name run return 0

# 换行
function global_shop:logic/item_data/to_string/add_seperator

# 写入 id
data modify storage global_shop:common g_text append value {"storage":"global_shop:common","nbt":"g_itemData.id","color":"dark_gray"}