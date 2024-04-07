#> global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_back
# @executor Menu

# 切换到主菜单
   # 让主菜单向右转 1 行，对准入口
   scoreboard players set g_columnIncrement glbs_common 1
   function global_shop:logic/menu/handlers/menu_handler/change_mode/main
   # 音效 更换菜单
   execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu