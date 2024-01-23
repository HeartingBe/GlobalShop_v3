# @executor Menu

execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/menu/handlers/main_menu_handler/handle/highlight_item_and_display_text

scoreboard players operation @s glbs_last_action_target = temp glbs_common

scoreboard players operation @s glbs_last_action = NO_ACTION_THIS_PLAYER glbs_common

execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_click_action