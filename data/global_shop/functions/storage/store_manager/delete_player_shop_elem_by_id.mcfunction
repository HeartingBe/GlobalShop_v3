# @brief 从玩家商店总列表和玩家正在出售的列表中删除该 id 对应的物品
# @executor Menu

# 定位物品
scoreboard players operation id glbs_common = @s glbs_last_action_target_id
execute store result score temp glbs_common run function global_shop:storage/store_manager/locate_index_in_player_shop_list_by_id

# 物品不存在直接返回
execute if score temp glbs_common matches ..-1 run return 0

# 从玩家商店总列表和玩家正在出售的列表中删除
# 构造宏 {index: int, uid: int, id: int}
   data remove storage global_shop:common temp
   execute store result storage global_shop:common temp.index int 1 run scoreboard players get index glbs_common
   execute on passengers if entity @s[type=minecraft:player] store result storage global_shop:common temp.uid int 1 run scoreboard players get @s glbs_uid
   execute store result storage global_shop:common temp.id int 1 run scoreboard players get @s glbs_last_action_target_id
function global_shop:storage/store_manager/delete_player_shop_elem_by_id/macro_delete