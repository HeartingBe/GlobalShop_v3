# @executor Menu

# 切换到主菜单
function global_shop:logic/menu/handlers/menu_handler/change_mode/main

execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action

scoreboard players operation @s glbs_last_action = RIGHT_CLICK glbs_common