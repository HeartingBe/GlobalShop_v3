# @brief 将物品展示实体所包含的物品的数量解析到自定义名称上
# @executor ItemDisplayEntity

# TODO 放弃当前展示数量的逻辑，改为额外骑文本展示实体

# 获取 Count
execute store result score Count glbs_common run data get entity @s item.Count
# Count<=1 不显示
execute if score Count glbs_common matches ..1 run return run data merge entity @s {CustomName:'""', CustomNameVisible:0b}
# 显示
   # 申请临时世界文本展示实体 00000d3a-0000-0d3a-0000-17cc0000edfa
   function global_shop:logic/temp_world_entity/text_display/call
   # 解析
   data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '{"score":{"objective":"glbs_common","name":"Count"}}'
   # 显示
   data modify entity @s CustomName set from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text
   data modify entity @s CustomNameVisible set value 1b