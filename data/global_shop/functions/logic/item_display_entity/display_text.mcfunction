#> global_shop:logic/item_display_entity/display_text
# @param g_itemData 物品信息
# @executor ItemDisplayEntity

# @other 这里不要使用变量 temp

execute as 00000d3a-0000-0d3a-0000-17cc000017cc on vehicle on passengers if entity @s[type=minecraft:player] run title @s actionbar ["物品存在, 展示信息 TODO"]

# 清除原文本展示实体，并生成新的文本展示实体
execute as 00000d3a-0000-0d3a-0000-17cc000017cc on vehicle run function global_shop:logic/text_display/text_display