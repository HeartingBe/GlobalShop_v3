# @brief 执行玩家取回的逻辑
# @param g_itemData
# @param index g_itemData 在玩家商店总列表中对应的下标
# @executor Menu
# @other 进入该函数时，物品一定存在

# log
#execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["左键确认"]

# 是自己出售的物品
function global_shop:logic/menu/handlers/player_shop_view_my_selling_handler/handle/player_left_click_confirm/sell_by_myself