# 物品可能没有自定义名称
execute unless data storage global_shop:common g_itemData.tag.display.Name run return 0

# 物品名字是第一行，不用换行

# 写入物品名称
data modify storage global_shop:common g_text append value {"storage":"global_shop:common","nbt":"g_itemData.tag.display.Name","interpret":1}

# 添加新行
function global_shop:logic/item_data/to_string/add_seperator