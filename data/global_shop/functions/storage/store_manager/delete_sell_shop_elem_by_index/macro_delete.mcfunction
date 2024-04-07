#> global_shop:storage/store_manager/delete_sell_shop_elem_by_index/macro_delete
# @macro {index: int}
# @executor Menu

# 从出售商店列表中删除
$data remove storage global_shop:storage g_sellShopList[$(index)]