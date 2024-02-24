# @executor Menu

execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/tellraw_money/1

# 记录上一次左键的物品的序号 order
function global_shop:logic/menu/handlers/menu_handler/handle/update_last_click_order