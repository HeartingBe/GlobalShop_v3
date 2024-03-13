# @param g_itemData
# @executor TextDisplay

# 物品名字是第一行，不用换行

# 获取物品的翻译原始 json，存储在 global_shop:common g_itemIdTranslateJson
function global_shop:logic/item_data/parse_item_id_translate_json

# 物品没有自定义名称, 直接写入物品的翻译原始 json
execute unless data storage global_shop:common g_itemData.tag.display.Name run return run data modify storage global_shop:common g_text append value {"storage":"global_shop:common","nbt":"g_itemIdTranslateJson","interpret":1}

# 物品有自定义名称，写入物品的翻译原始 json + <自定义名称>
data modify storage global_shop:common g_text append value {"text":"","extra":[{"storage":"global_shop:common","nbt":"g_itemIdTranslateJson","interpret":1},{"text":" <","color":"gray"},{"storage":"global_shop:common","nbt":"g_itemData.tag.display.Name","interpret":1},{"text":">","color":"gray"}]}