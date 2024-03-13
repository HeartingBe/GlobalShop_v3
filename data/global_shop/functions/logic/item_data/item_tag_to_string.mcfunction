# @brief 获取物品的 tag json
# @param g_itemData
# @param g_itemTagJson 出参
# @executor -

data remove storage global_shop:common g_itemTagJson

# 申请临时世界文本展示实体
function global_shop:logic/temp_world_entity/text_display/call

# 在临时世界文本实体上解析物品 tag
data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '{"storage":"global_shop:common","nbt":"g_itemData.tag"}'

# 写入出参
data modify storage global_shop:common g_itemTagJson set from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text