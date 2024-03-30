#> global_shop:storage/store_manager/delete_sell_shop_elem_by_index/macro_delete
# @macro {index: int}
# @executor Menu

# 从玩家商店总表中删除
$data remove storage global_shop:storage g_sellShopList[$(index)]