scoreboard players operation mid glbs_common = left glbs_common
scoreboard players operation mid glbs_common += right glbs_common
scoreboard players operation mid glbs_common /= 2 glbs_common

data remove storage global_shop:common temp
execute store result storage global_shop:common temp.index int 1 run scoreboard players get mid glbs_common
execute store result score temp2 glbs_common run function global_shop:storage/store_manager/return_expire_item/get_expire_num/macro_get_expire_time with storage global_shop:common temp

# if
function global_shop:storage/store_manager/return_expire_item/get_expire_num/while/if

execute if score left glbs_common <= right glbs_common run function global_shop:storage/store_manager/return_expire_item/get_expire_num/while