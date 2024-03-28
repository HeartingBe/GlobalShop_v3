#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/check_if_disabled
# @executor Menu
# @return if_disabled glbs_common 是否被禁用

# temp2 glbs_common = @s glbs_last_target
# order和index一一对应，可以直接用order确定这个物品展示实体在g_cashInfo对应的下标
execute if score temp_order glbs_common matches 7 if data storage global_shop:storage g_cashInfo[0].disable run return run scoreboard players set if_disabled glbs_common 1
execute if score temp_order glbs_common matches 10 if data storage global_shop:storage g_cashInfo[1].disable run return run scoreboard players set if_disabled glbs_common 1
execute if score temp_order glbs_common matches 13 if data storage global_shop:storage g_cashInfo[2].disable run return run scoreboard players set if_disabled glbs_common 1
execute if score temp_order glbs_common matches 16 if data storage global_shop:storage g_cashInfo[3].disable run return run scoreboard players set if_disabled glbs_common 1
execute if score temp_order glbs_common matches 19 if data storage global_shop:storage g_cashInfo[4].disable run return run scoreboard players set if_disabled glbs_common 1

# 如果没有被禁用，就返回0
scoreboard players set if_disabled glbs_common 0