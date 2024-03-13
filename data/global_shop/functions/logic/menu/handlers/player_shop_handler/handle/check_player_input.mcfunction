# @executor Player

# inputter_1 -> index
execute unless score @s glbs_inputter_1 matches 0 run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/1

# inputter_2 -> id
execute unless score @s glbs_inputter_2 matches 0 run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input/2