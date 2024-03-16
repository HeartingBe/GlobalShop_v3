#> global_shop:logic/menu/handlers/edit_main_menu_handler/handle/player_left_click/change_mode/edit_cash_exchange
function global_shop:logic/menu/handlers/menu_handler/change_mode/edit_cash_exchange

# 音效 更换菜单
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu