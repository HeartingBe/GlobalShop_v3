execute unless score chosen_cash_index glbs_common matches 0..4 on passengers run return run tellraw @s {"text":"请左键选择货币后进行操作","color": "yellow"}

# 提示管理员设置物品
execute on passengers run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/try_set_item/tellraw