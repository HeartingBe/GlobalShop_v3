#> global_shop:storage/store_manager/delete_recycle_shop_elem_by_id
#
# 从出售商店中中删除该 id 对应的物品
# @param id 物品分配的 id
# @executor Menu

# 获取下标
scoreboard players operation id glbs_common = @s glbs_last_view_id
execute store result score index glbs_common run function global_shop:storage/store_manager/locate_index_in_recycle_shop_list_by_id

execute if score index glbs_common matches -1 run return 0

# 构造宏 {index: int}
   data remove storage global_shop:common temp
   execute store result storage global_shop:common temp.index int 1 run scoreboard players get index glbs_common
function global_shop:storage/store_manager/delete_recycle_shop_elem_by_id/macro_delete with storage global_shop:common temp