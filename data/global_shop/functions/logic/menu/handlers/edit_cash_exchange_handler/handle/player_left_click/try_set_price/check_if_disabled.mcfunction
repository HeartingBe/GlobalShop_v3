#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_price/check_if_disabled
# @executor Menu
# @param temp2 玩家选中的货币的序号
# @param if_disabled 出参，这个货币是否被禁用

scoreboard players set if_disabled glbs_common 0

# temp2 glbs_common = @s glbs_last_target
# order和index一一对应，可以直接用order确定这个物品展示实体在g_cashInfo对应的下标
execute if score temp2 glbs_common matches 7 run return run execute if data storage global_shop:storage g_cashInfo[0].disable run scoreboard players set if_disabled glbs_common 1
execute if score temp2 glbs_common matches 10 run return run execute if data storage global_shop:storage g_cashInfo[1].disable run scoreboard players set if_disabled glbs_common 1
execute if score temp2 glbs_common matches 13 run return run execute if data storage global_shop:storage g_cashInfo[2].disable run scoreboard players set if_disabled glbs_common 1
execute if score temp2 glbs_common matches 16 run return run execute if data storage global_shop:storage g_cashInfo[3].disable run scoreboard players set if_disabled glbs_common 1
execute if score temp2 glbs_common matches 19 if data storage global_shop:storage g_cashInfo[4].disable run scoreboard players set if_disabled glbs_common 1