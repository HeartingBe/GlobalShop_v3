# @macro temp:{id: int, uid: int}

$data modify storage global_shop:common g_itemData set from storage global_shop:storage g_playerSellingListMap.$(uid)[{tag:{global_shop:{id:$(id)}}}]