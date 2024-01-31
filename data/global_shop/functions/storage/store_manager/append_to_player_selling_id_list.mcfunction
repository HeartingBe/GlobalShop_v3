# @brief 将 id 插入到玩家的正在出售 id 列表
# @macro {playerUid: int, id: int}
# @$param playerUid 玩家 UID
# @$param id 要插入的 id
# @executor Player

$data modify storage global_shop:storage g_playerSellingIdListMap.$(playerUid) append value $(id)