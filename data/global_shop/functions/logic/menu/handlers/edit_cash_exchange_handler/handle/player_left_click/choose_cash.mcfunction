execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/choose_cash/set_state
scoreboard players operation chosen_cash_order glbs_common = temp glbs_common 
scoreboard players operation temp glbs_common -= 7 glbs_common
execute store result score chosen_cash_index glbs_common run scoreboard players operation temp glbs_common /= 3 glbs_common