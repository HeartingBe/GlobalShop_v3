# @brief 将物品写入该玩家的历史购买列表
# @macro {playerUid: int}
# @$param playerUid 玩家 uid
# @param g_itemData 要插入的物品
# @executor Player

$data modify storage global_shop:storage g_playerBoughtListMap.$(playerUid) append from storage global_shop:common g_itemData

$execute if data storage global_shop:storage g_playerBoughtListMap.$(playerUid)[27] run data remove storage global_shop:storage g_playerBoughtListMap.$(playerUid)[0]