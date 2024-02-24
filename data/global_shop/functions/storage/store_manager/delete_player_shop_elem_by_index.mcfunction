#> global_shop:storage/store_manager/delete_player_shop_elem_by_index
# @brief 从玩家商店总列表和玩家正在出售的列表中删除该 index 对应的物品
# @param index 物品数据 g_itemData 在玩家商店总列表中对应的下标
# @param uid 卖家的 uid
# @param id 物品分配的 id
# @executor Menu

# log
#execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["index: ",{"score":{"objective":"glbs_common","name":"index"}},"     uid: ",{"score":{"objective":"glbs_common","name":"uid"}},"     id: ",{"score":{"objective":"glbs_common","name":"id"}}]

# 从玩家商店总列表和玩家正在出售的列表中删除
# 构造宏 {index: int, uid: int, id: int}
   data remove storage global_shop:common temp
   execute store result storage global_shop:common temp.index int 1 run scoreboard players get index glbs_common
   execute store result storage global_shop:common temp.uid int 1 run scoreboard players get uid glbs_common
   execute store result storage global_shop:common temp.id int 1 run scoreboard players get id glbs_common
function global_shop:storage/store_manager/delete_player_shop_elem_by_index/macro_delete with storage global_shop:common temp