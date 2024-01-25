# @brief 生成 g_itemsToDisplay 中 [begin, end) 下标范围的物品
# @param begin g_itemsToDisplay 列表的起始下标
# @param end g_itemsToDisplay 列表的结束位置（不包含）

execute if score begin glbs_common < end glbs_common run function global_shop:ui/display_manager/range_summon/while