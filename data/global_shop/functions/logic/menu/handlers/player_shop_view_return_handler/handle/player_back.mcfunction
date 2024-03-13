# @executor Menu

# 切换到玩家商店主菜单
   # 让主菜单向左转 1 行，对准入口
   scoreboard players set g_columnIncrement glbs_common -1
   function global_shop:logic/menu/handlers/menu_handler/change_mode/player_shop_main