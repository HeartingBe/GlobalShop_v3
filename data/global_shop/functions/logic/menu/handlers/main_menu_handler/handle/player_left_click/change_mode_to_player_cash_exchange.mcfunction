#> global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_player_cash_exchange

# 玩家从主菜单进入货币兑换页面
function global_shop:logic/menu/handlers/menu_handler/change_mode/player_cash_exchange
# 音效 更换菜单
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu