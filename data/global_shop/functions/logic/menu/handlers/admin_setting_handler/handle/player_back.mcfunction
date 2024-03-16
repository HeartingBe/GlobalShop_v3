# @executor Menu

# 回到编辑模式主菜单
   # 让编辑模式主菜单向左转 3 行，对准入口
   scoreboard players set g_columnIncrement glbs_common -3
   function global_shop:logic/menu/handlers/menu_handler/change_mode/edit_main
   # 音效 更换菜单
   execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu