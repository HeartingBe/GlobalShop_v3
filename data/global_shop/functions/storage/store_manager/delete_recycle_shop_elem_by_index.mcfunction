#> global_shop:storage/store_manager/delete_recycle_shop_elem_by_index
# @brief 从回收商店列表中删除该 index 对应的物品
# @param index 物品数据在回收商店列表中对应的下标
# @executor Menu

# 从回收商店列表中删除
# 构造宏 {index: int}
   data remove storage global_shop:common temp
   execute store result storage global_shop:common temp.index int 1 run scoreboard players get index glbs_common
function global_shop:storage/store_manager/delete_recycle_shop_elem_by_index/macro_delete with storage global_shop:common temp