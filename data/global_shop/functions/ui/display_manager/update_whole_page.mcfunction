# @brief 更新整页（全部）物品展示实体。检查在 g_itemsToDisplay 列表中对应位置的数据，id 改变时说明数据改变，应重新写入
# @executor Menu

# 清除文本展示实体的文字
execute on passengers if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/clear_text

execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:ui/display_manager/update_whole_page/1