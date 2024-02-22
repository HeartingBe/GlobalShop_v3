# @brief 获取 g_recycleShopList[index] 并将其尾插到 g_itemsToDisplay
# @param index 下标，用 temp2 传入
# @param g_itemsToDisplay 结果要写入的目标位置，尾插
# @executor Menu

execute if score temp2 glbs_common matches ..-1 run return run data modify storage global_shop:common g_itemsToDisplay append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM

execute store result score temp3 glbs_common run data get storage global_shop:storage g_recycleShopList
scoreboard players remove temp3 glbs_common 1
execute if score temp3 glbs_common < temp2 glbs_common run return run data modify storage global_shop:common g_itemsToDisplay append from storage global_shop:menu_preset_and_control CONTROL_NULL_ITEM

# 宏参数在父函数中已经清空, 补充 index 即可
execute store result storage global_shop:common temp.index int 1 run scoreboard players get temp2 glbs_common
function global_shop:storage/store_manager/get_recycle_shop_list_elem_by_index_and_append/1 with storage global_shop:common temp