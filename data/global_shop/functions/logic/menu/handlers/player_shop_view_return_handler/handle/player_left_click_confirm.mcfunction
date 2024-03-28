# @brief 执行玩家取退回物品的逻辑
# @param g_itemData
# @executor Menu

# log
#execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["左键确认"]

# 通知
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_shop_view_return_handler/handle/player_left_click_confirm/tip_and_get_player_uid
# 删除物品
scoreboard players operation id glbs_common = @s glbs_last_view_id
function global_shop:storage/store_manager/delete_return_elem_by_uid_and_id

# 将物品退给玩家
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/player/obtain_item

# 刷新显示
function global_shop:logic/menu/handlers/player_shop_view_return_handler/refresh