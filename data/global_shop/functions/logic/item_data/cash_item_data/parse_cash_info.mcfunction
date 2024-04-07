#> global_shop:logic/item_data/cash_item_data/parse_cash_info
# @param g_itemData
# @param g_text
# @executor TextDisplay

# 换行
function global_shop:logic/item_data/add_seperator

# 分割线（会新起一行）
function global_shop:logic/item_data/add_diviver

# 换行
function global_shop:logic/item_data/add_seperator

# 写入面值
data modify storage global_shop:common g_text append value {"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.item_frame.cash_value\"",color:"aqua","extra":[{"text":": ","color":"aqua"},{"nbt":"g_itemData.tag.global_shop.price","storage":"global_shop:common","color":"yellow"}]}