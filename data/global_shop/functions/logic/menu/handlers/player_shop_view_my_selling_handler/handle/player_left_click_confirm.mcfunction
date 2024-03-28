# @brief 执行玩家取回的逻辑
# @param g_itemData
# @param index g_itemData 在玩家商店总列表中对应的下标
# @executor Menu
# @other 进入该函数时，物品一定存在

# log
#execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["左键确认"]

# 通知
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_shop_view_my_selling_handler/handle/player_left_click_confirm/tip_and_get_player_uid

# 删除物品
scoreboard players operation id glbs_common = @s glbs_last_view_id
function global_shop:storage/store_manager/delete_player_shop_elem_by_index

# 将物品退给玩家
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/player/obtain_item

# 刷新显示
function global_shop:logic/menu/handlers/player_shop_view_my_selling_handler/refresh