# @brief 调 global_shop:storage/store_manager/locate_index_in_player_shop_list_by_id 获取 index 后，直接通过 index 获取物品信息
# @param index
# @executor -

data remove storage global_shop:common g_itemData

execute if score index glbs_common matches ..-1 run return 0

data remove storage global_shop:common temp
execute store result storage global_shop:common temp.index int 1 run scoreboard players get index glbs_common
function global_shop:storage/store_manager/get_player_shop_list_elem_by_index/macro_get with storage global_shop:common temp