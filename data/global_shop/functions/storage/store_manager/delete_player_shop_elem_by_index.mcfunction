# @brief 从玩家商店总列表和玩家正在出售的列表中删除该 index 对应的物品
# @param index 物品数据 g_itemData 在玩家商店总列表中对应的下标
# @executor Menu

# log
execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"score":{"objective":"glbs_common","name":"index"}}]

# 物品不存在直接返回
execute if score index glbs_common matches ..-1 run return 0

# 从玩家商店总列表和玩家正在出售的列表中删除
# 构造宏 {index: int, uid: int, id: int}
   data remove storage global_shop:common temp
   execute store result storage global_shop:common temp.index int 1 run scoreboard players get index glbs_common
   execute on passengers if entity @s[type=minecraft:player] store result storage global_shop:common temp.uid int 1 run scoreboard players get @s glbs_uid
   execute store result storage global_shop:common temp.id int 1 run scoreboard players get @s glbs_last_action_target_id
   # log
   execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"type":"nbt","storage":"global_shop:common","nbt":"temp"}]
function global_shop:storage/store_manager/delete_player_shop_elem_by_index/macro_delete with storage global_shop:common temp