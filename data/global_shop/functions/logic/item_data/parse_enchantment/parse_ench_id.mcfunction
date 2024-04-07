# @brief 获取该项附魔 id 的双层字符串形式
# @param temp.enchantments[0]
# @param enchIdString 出参，格式是 enchIdString:{id:'"xxx"'}
# @executor -

data remove storage global_shop:common enchIdString

# 申请临时世界文本展示实体
function global_shop:logic/temp_world_entity/text_display/call

# 在临时世界文本实体上解析该项附魔 id
data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '{"type":"nbt","storage":"global_shop:common","nbt":"temp.enchantments[0].id"}'

# 写入出参
data modify storage global_shop:common enchIdString.id set from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text