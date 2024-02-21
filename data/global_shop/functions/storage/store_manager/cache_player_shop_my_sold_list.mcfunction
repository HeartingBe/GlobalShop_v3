#> global_shop:storage/store_manager/cache_player_shop_my_sold_list
# @brief 将玩家的历史出售列表 global_shop:storage g_playerSoldListMap[uid] 缓存到 global_shop:storage g_tempList
# @macro {uid: int}
# @param g_tempList 出参
# @executor -

data remove storage global_shop:storage g_tempList

$data modify storage global_shop:storage g_tempList set from storage global_shop:storage g_playerSoldListMap.$(uid)