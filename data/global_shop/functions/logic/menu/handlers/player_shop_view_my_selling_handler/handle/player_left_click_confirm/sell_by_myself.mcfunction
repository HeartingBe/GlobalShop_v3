# @brief 玩家左键确认，返还
# @param g_itemData 物品数据
# @param index 物品数据 g_itemData 在玩家商店总列表中对应的下标
# @executor Menu

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["已取回"]

# 删除物品
execute on passengers if entity @s[type=minecraft:player] run scoreboard players operation uid glbs_common = @s glbs_uid
scoreboard players operation id glbs_common = @s glbs_last_view_id
function global_shop:storage/store_manager/delete_player_shop_elem_by_index

# 将物品退给玩家
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/player/obtain_item

# 刷新显示
function global_shop:logic/menu/handlers/player_shop_view_my_selling_handler/refresh