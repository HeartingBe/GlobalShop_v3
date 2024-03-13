# @brief 获取该玩家存储的物品数量（正在出售的物品数+退回的物品数）
# @executor Player

data remove storage global_shop:common temp
execute store result storage global_shop:common temp.uid int 1 run scoreboard players get @s glbs_uid
execute store result score temp glbs_common run function global_shop:storage/store_manager/get_player_selling_list_size with storage global_shop:common temp
execute store result score temp2 glbs_common run function global_shop:storage/store_manager/get_return_list_size with storage global_shop:common temp

return run scoreboard players operation temp glbs_common += temp2 glbs_common