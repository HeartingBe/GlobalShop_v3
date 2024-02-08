# @brief 将玩家上架的这个物品插入到其正在出售的物品列表
# @macro {playerUid: int}
# @$param playerUid 玩家 uid
# @param g_itemData 要插入的物品
# @executor Player

$data modify storage global_shop:storage g_playerSellingListMap.$(playerUid) append from storage global_shop:common g_itemData