#> global_shop:logic/menu/handlers/editmode_menu_handler/handle/player_back
# @executor Menu

# 切换到主菜单
   # 让主菜单向右转 3 行，对准入口
   scoreboard players set g_columnIncrement glbs_common 3
   function global_shop:logic/menu/handlers/menu_handler/change_mode/main