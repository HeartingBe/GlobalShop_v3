# mid
scoreboard players operation mid glbs_common = left glbs_common
scoreboard players operation mid glbs_common += right glbs_common
scoreboard players operation mid glbs_common /= 2 glbs_common
   # log
   #tellraw @a [{"score":{"objective":"glbs_common","name":"mid"}}]

# tempId 寄存取出的 id
execute store result storage global_shop:common temp.mid int 1 run scoreboard players get mid glbs_common
execute store result score tempId glbs_common run function global_shop:storage/store_manager/get_recycle_shop_list_elem_by_id/macro_get_id with storage global_shop:common temp

# if
execute if score id glbs_common > tempId glbs_common run return run function global_shop:storage/store_manager/get_recycle_shop_list_elem_by_id/while/if
# else if
execute if score id glbs_common < tempId glbs_common run return run function global_shop:storage/store_manager/get_recycle_shop_list_elem_by_id/while/else_if
# else 取 index = mid 返回
execute store result score index glbs_common run data get storage global_shop:common temp.mid
function global_shop:storage/store_manager/get_recycle_shop_list_elem_by_index