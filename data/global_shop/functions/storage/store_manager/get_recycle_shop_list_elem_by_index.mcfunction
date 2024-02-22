# @brief 获取出售商店中下标为 index 的物品信息
# @param index
# @param g_itemData 出参
# @executor -

data remove storage global_shop:common g_itemData

execute if score index glbs_common matches ..-1 run return 0

data remove storage global_shop:common temp
execute store result storage global_shop:common temp.index int 1 run scoreboard players get index glbs_common
function global_shop:storage/store_manager/get_recycle_shop_list_elem_by_index/macro_get with storage global_shop:common temp