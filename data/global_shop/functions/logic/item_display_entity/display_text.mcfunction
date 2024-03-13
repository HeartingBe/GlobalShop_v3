#> global_shop:logic/item_display_entity/display_text
# @brief 将物品展示实体所含有的物品信息解析和展示到文本展示实体上
# @param g_itemData 物品信息
# @executor ItemDisplayEntity

execute as 00000d3a-0000-0d3a-0000-17cc000017cc on vehicle on passengers if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/parse_and_set_text