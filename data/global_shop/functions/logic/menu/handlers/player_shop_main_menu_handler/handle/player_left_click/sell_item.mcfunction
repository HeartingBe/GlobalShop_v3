# 清除左键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action

# 检查玩家是否达到最大物品存储数目
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/sell_item/check