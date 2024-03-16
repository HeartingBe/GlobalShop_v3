# @executor Menu

# 切换到玩家商店主菜单
   # 让主菜单向右转 2 行，对准入口
   scoreboard players set g_columnIncrement glbs_common 2
   function global_shop:logic/menu/handlers/menu_handler/change_mode/player_shop_main
   # 音效 更换菜单
   execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu