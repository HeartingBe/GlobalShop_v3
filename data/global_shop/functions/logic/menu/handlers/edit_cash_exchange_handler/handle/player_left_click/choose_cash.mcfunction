#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/choose_cash
# @breif 左键了货币
# @executor Menu

# 使左键的货币高亮，使之前左键的货币不亮
    #这里记录是为了在set_state中使用glbs_last_target的值
    scoreboard players operation chosen_cash_order glbs_common = @s glbs_last_target
    execute on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click/choose_cash/set_state
# 记录物品order供点击按钮的时候使用
function global_shop:logic/menu/handlers/menu_handler/handle/update_last_click_order

execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/target