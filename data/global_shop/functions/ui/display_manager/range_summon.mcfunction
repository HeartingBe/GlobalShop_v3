# @brief 生成 g_itemsToDisplay 中 [begin, end) 下标范围的物品
# @param begin g_itemsToDisplay 列表的起始下标
# @param end g_itemsToDisplay 列表的结束位置（不包含）
# @executor Menu

# log
#tellraw @a ["begin: ",{"score":{"objective":"glbs_common","name":"begin"}},"         end: ",{"score":{"objective":"glbs_common","name":"end"}}]

tag @s add glbs_to_carry_item_display

execute if score begin glbs_common < end glbs_common run function global_shop:ui/display_manager/range_summon/while

tag @s remove glbs_to_carry_item_display