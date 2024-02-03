# 清除左键信息
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action

# 引导玩家上架物品
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/sell_item/send_text_and_enable_trigger