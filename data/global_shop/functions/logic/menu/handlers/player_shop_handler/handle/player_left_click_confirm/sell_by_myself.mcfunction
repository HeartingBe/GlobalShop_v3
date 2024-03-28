# @brief 玩家左键确认，该物品是玩家自己卖出的，直接返还
# @param g_itemData 物品数据
# @param index 物品数据 g_itemData 在玩家商店总列表中对应的下标
# @executor Menu

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"text":"这个物品是你自己出售的, 已直接取回","color":"red"}]

# 音效 成功
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/success

# 删除物品
execute on passengers if entity @s[type=minecraft:player] run scoreboard players operation uid glbs_common = @s glbs_uid
scoreboard players operation id glbs_common = @s glbs_last_view_id
function global_shop:storage/store_manager/delete_player_shop_elem_by_index

# 将物品直接退给玩家
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/player/obtain_item

# 刷新显示
function global_shop:logic/menu/handlers/player_shop_handler/refresh