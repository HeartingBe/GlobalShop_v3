# @param g_itemData
# @executor Player

# 解析物品 tag，存储在 global_shop:common g_itemTagString
function global_shop:logic/item_data/item_tag_to_string

# 获取物品的翻译原始 json，存储在 global_shop:common g_itemIdTranslateJson
function global_shop:logic/item_data/parse_item_id_translate_json
   # 提取 g_itemIdTranslateJson 的 translate，存储在 global_shop:common g_itemIdTranslateString
   data remove storage global_shop:common temp
   data modify storage global_shop:common temp.input set from storage global_shop:common g_itemIdTranslateJson
   function global_shop:logic/item_data/item_id_translate_json_get_translate with storage global_shop:common temp

# 构造正确的物品悬浮字格式，存储在 global_shop:common g_itemHoverEventString
data modify storage global_shop:common g_itemHoverEventString set value [{"text":"[","color":"gray"},{"hoverEvent":{"action":"show_item"},"bold":1,"color":"aqua"},{"text":"]","color":"gray"}]
data modify storage global_shop:common g_itemHoverEventString[1].translate set from storage global_shop:common g_itemIdTranslateString
data modify storage global_shop:common g_itemHoverEventString[1].hoverEvent.contents.id set from storage global_shop:common g_itemData.id
data modify storage global_shop:common g_itemHoverEventString[1].hoverEvent.contents.Count set from storage global_shop:common g_itemData.Count
data modify storage global_shop:common g_itemHoverEventString[1].hoverEvent.contents.tag set from storage global_shop:common g_itemTagString