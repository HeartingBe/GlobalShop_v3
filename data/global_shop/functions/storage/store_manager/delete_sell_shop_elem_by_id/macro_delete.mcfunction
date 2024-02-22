#> global_shop:storage/store_manager/delete_sell_shop_elem_by_id/macro_delete
#
# @macro {index: int}

# 从出售商店总表中删除
$data remove storage global_shop:storage g_sellShopList[$(index)]