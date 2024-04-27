# @param g_itemData
# @executor Player

# 将物品信息 g_itemData 处理成可以用原始 json 文本引用解析的格式，存储在 global_shop:common g_itemHoverEventString
function global_shop:logic/item_data/parse_item_hoverevent_json

# 发送物品信息
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"view_sold.tellraw_item\"","color":"green"},{"text":" -> ","color":"green"},{"type":"nbt","storage":"global_shop:common","nbt":"g_itemHoverEventString","interpret":true}]

# 音效
function global_shop:sound/target