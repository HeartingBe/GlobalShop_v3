# @executor Menu

# 提示主菜单不可退出（shift 脱离 Menu 才能退出）
execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7c主菜单不可退出"]

execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action

scoreboard players operation @s glbs_last_action = RIGHT_CLICK glbs_common