# @brief 解析玩家名的 json
# @param g_playerNameJson 出参
# @executor Player 要求有临时标签 glbs_temp_parse_player_name

data remove storage global_shop:common g_playerNameJson

# 申请临时世界文本展示实体
function global_shop:logic/temp_world_entity/text_display/call

# 在临时世界文本实体上解析物品 tag
data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '{"selector":"@a[tag=glbs_temp_parse_player_name]"}'
# 写入出参
data modify storage global_shop:common g_playerNameJson set from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text