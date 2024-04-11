#> global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/force_back
# 有管理员开始编辑货币的时候，强制所有处于货币兑换页面的玩家退出此页面，返回到主菜单
# @executor Menu

# 提示
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/force_back/tellraw

# 返回至主菜单
    # 主菜单向右转 1 列，对准入口
    scoreboard players set g_columnIncrement glbs_common 1
function global_shop:logic/menu/handlers/menu_handler/change_mode/main