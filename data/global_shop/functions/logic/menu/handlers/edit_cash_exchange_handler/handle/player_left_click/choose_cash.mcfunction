#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/choose_cash
# @breif 选中了物品

#这里记录是为了在set_state中使用glbs_last_target的值
scoreboard players operation chosen_cash_order glbs_common = @s glbs_last_target
execute on passengers run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/choose_cash/set_state
# 记录物品order供点击按钮的时候使用
function global_shop:logic/menu/handlers/menu_handler/handle/update_last_click_order