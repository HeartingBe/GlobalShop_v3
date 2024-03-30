#> global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click

# 获取玩家看向的控件序号（就是 @s glbs_last_view_order）
scoreboard players operation order glbs_common = @s glbs_last_view_order

# 没有点击任何控件
execute if score order glbs_common matches -1 run return 0

# 点击了货币，进行取钱操作
execute if score order glbs_common matches 4 on passengers if entity @s[type=minecraft:player] run return run function global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_0
execute if score order glbs_common matches 7 on passengers if entity @s[type=minecraft:player] run return run function global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_1
execute if score order glbs_common matches 10 on passengers if entity @s[type=minecraft:player] run return run function global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_2
execute if score order glbs_common matches 13 on passengers if entity @s[type=minecraft:player] run return run function global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_3
execute if score order glbs_common matches 16 on passengers if entity @s[type=minecraft:player] run return run function global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_4

# 点击了存钱按钮
execute if score order glbs_common matches 22 on passengers if entity @s[type=minecraft:player] run return run function global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/deposit
