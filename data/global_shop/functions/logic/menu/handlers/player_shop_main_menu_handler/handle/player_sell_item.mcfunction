# @brief 上架玩家主手的物品
# @executor Player

execute if score @s glbs_sell_item matches 0 run return 0

execute if score @s glbs_sell_item matches ..0 run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/fail

# TODO
tellraw @s ["出售后续逻辑..."]

scoreboard players set @s glbs_sell_item 0