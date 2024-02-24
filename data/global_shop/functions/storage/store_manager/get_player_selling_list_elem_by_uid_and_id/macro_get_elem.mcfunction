#> global_shop:storage/store_manager/get_player_selling_list_elem_by_uid_and_id/macro_get_elem
# @macro {id: int, uid: int}

$data modify storage global_shop:common g_itemData set from storage global_shop:storage g_playerSellingListMap.$(uid)[{tag:{global_shop:{id:$(id)}}}]