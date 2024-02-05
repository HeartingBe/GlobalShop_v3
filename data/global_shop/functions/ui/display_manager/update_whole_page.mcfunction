# @brief 更新整页（全部）物品展示实体。检查在 g_itemsToDisplay 列表中对应位置的数据，id 改变时说明数据改变，应重新写入
# @executor Menu

execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:ui/display_manager/update_whole_page/1