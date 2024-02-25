# @param g_itemData
# @executor TextDisplay

# 解析文本
function global_shop:logic/item_data/to_string

# 写入文本
data merge entity @s {text_opacity:-1b,background:-283703273,text:'{"nbt":"g_text","storage":"global_shop:common","interpret":1}'}