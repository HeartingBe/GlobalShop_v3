# @brief 获取物品的 tag json
# @param g_itemData
# @param g_itemTagString 出参
# @executor -

data remove storage global_shop:common g_itemTagString

# 申请临时世界文本展示实体
function global_shop:logic/temp_world_entity/text_display/call

# 在临时世界文本实体上解析物品 tag
data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '{"storage":"global_shop:common","nbt":"g_itemData.tag"}'

# 去掉一层引号并写入出参
data remove storage global_shop:common temp
data modify storage global_shop:common temp.text set from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text
function global_shop:logic/item_data/item_tag_to_string/macro_get_string with storage global_shop:common temp