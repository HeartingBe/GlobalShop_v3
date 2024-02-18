# @brief 获取物品的翻译原始 json
# @param g_itemData
# @param g_itemIdTranslateJson 出参
# @executor -

data remove storage global_shop:common g_itemIdTranslateJson

# 申请临时世界物品实体
function global_shop:logic/temp_world_item_entity_utils/call_temp_world_item_entity

# 申请临时世界文本展示实体
function global_shop:logic/temp_world_text_display_utils/call_temp_world_text_display

# 将物品 id 写入临时世界物品实体
data modify entity 00000d3a-0000-0d3a-0000-17cc0000edf9 Item.id set from storage global_shop:common g_itemData.id

# 在临时世界文本实体上解析临时世界物品实体的翻译键
data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '{"selector":"00000d3a-0000-0d3a-0000-17cc0000edf9"}'

# 写入出参
data modify storage global_shop:common g_itemIdTranslateJson set from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text