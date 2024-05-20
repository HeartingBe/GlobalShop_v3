# @brief 将物品展示实体所包含物品的数量解析到文本展示实体上
# @executor ItemDisplayEntity

# 获取 Count
execute store result score Count glbs_common run data get entity @s item.Count
# Count<=1 不显示
execute if score Count glbs_common matches ..1 run return run execute on passengers run data modify entity @s text_opacity set value 4b

# 显示
   # 如果没有文本展示实体，需要先生成
   function global_shop:logic/item_display_entity/display_count/check_text_display_without_animation
execute on passengers run data merge entity @s {text:'{"score":{"objective":"glbs_common","name":"Count"}}'}