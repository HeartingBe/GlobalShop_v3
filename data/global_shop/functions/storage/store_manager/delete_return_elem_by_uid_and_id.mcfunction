#> global_shop:storage/store_manager/delete_return_elem_by_uid_and_id
# @brief 从退还的物品列表中删除该 id 对应的物品
# @param uid 卖家的 uid
# @param id 物品分配的 id
# @executor Menu

# 构造宏 {index: int, uid: int, id: int}
   data remove storage global_shop:common temp
   execute store result storage global_shop:common temp.uid int 1 run scoreboard players get uid glbs_common
   execute store result storage global_shop:common temp.id int 1 run scoreboard players get id glbs_common
function global_shop:storage/store_manager/delete_return_elem_by_uid_and_id/macro_delete with storage global_shop:common temp