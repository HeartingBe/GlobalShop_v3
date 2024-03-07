# @brief 将物品写入该玩家的退还列表
# @macro {uid: int}
# @$param uid 玩家 uid
# @param g_itemData 要插入的物品
# @executor -

$data modify storage global_shop:storage g_returnListMap.$(uid) append from storage global_shop:common g_itemData