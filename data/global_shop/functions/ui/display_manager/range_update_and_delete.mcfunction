# @brief 更新周围的物品展示实体，先更新 order，超过范围说明要删除，否则检查在 g_itemsToDisplay 列表中对应位置的数据是否改变
# @param orderDiff order 差值，需加上

execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:ui/display_manager/range_update_and_delete/1