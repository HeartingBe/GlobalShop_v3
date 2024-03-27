# @param g_itemData
# @executor Player

# 解析物品 tag，存储在 global_shop:common g_itemTagJson
function global_shop:logic/item_data/item_tag_to_string

# 获取物品的翻译原始 json，存储在 global_shop:common g_itemIdTranslateJson
function global_shop:logic/item_data/parse_item_id_translate_json
   # 提取 g_itemIdTranslateJson 的 translate
   data remove storage global_shop:common temp
   data modify storage global_shop:common temp.input set from storage global_shop:common g_itemIdTranslateJson
   function global_shop:logic/item_data/item_id_translate_json_get_translate with storage global_shop:common temp

# 发送物品信息
data modify storage global_shop:common temp.itemInfo.id set from storage global_shop:common g_itemData.id
execute store result storage global_shop:common temp.itemInfo.Count int 1 run data get storage global_shop:common g_itemData.Count
data modify storage global_shop:common temp.itemInfo.tag set from storage global_shop:common g_itemTagJson
function global_shop:logic/menu/handlers/player_shop_view_my_bought_handler/handle/send_item_info_to_player/tellraw with storage global_shop:common temp.itemInfo

# 音效
function global_shop:sound/target

data remove storage global_shop:common temp.itemInfo