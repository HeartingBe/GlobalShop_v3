# @brief 玩家左键确认，该物品是玩家自己卖出的，直接返还
# @param g_itemData 物品数据
# @param index 物品数据 g_itemData 在玩家商店总列表中对应的下标
# @executor Menu

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["自己出售的物品, 已取回"]

# 删除物品
function global_shop:storage/store_manager/delete_player_shop_elem_by_index

# 将物品直接退给玩家
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/player/obtain_item

# 刷新显示
function global_shop:logic/menu/handlers/player_shop_view_all_handler/refresh