#> global_shop:storage/store_manager/locate_index_in_sell_shop_list_by_id/while
# mid
scoreboard players operation mid glbs_common = left glbs_common
scoreboard players operation mid glbs_common += right glbs_common
scoreboard players operation mid glbs_common /= 2 glbs_common

# temp 寄存取出的 id
execute store result storage global_shop:common temp.mid int 1 run scoreboard players get mid glbs_common
execute store result score temp glbs_common run function global_shop:storage/store_manager/locate_index_in_sell_shop_list_by_id/macro_get_id with storage global_shop:common temp

# if
execute if score id glbs_common > temp glbs_common run return run function global_shop:storage/store_manager/locate_index_in_sell_shop_list_by_id/while/if
# else if
execute if score id glbs_common < temp glbs_common run return run function global_shop:storage/store_manager/locate_index_in_sell_shop_list_by_id/while/else_if
# else
scoreboard players set isReturn glbs_common 1