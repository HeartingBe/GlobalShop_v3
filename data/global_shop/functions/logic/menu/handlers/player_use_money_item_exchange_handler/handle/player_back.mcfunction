#> global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_back
# @executor Menu

# 切换到主菜单
   # 无需旋转对准入口
   scoreboard players set g_columnIncrement glbs_common 0
   function global_shop:logic/menu/handlers/menu_handler/change_mode/main
   # 音效 更换菜单
   execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu