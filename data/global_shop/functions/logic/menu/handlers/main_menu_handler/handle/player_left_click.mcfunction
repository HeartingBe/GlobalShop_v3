# @executor Menu

# 获取玩家看向的控件序号（就是 @s glbs_last_action_target_order）
scoreboard players operation temp glbs_common = @s glbs_last_action_target_order

   # 玩家点击菜单外的地方
   execute if score temp glbs_common matches -1 run return run function global_shop:logic/menu/handlers/menu_handler/handle/player_left_click/null

   # log
   execute on passengers if entity @s[type=minecraft:player] run title @s actionbar [{"score":{"objective":"glbs_common","name":"temp"}}]

   # 4 >> 切换到编辑模式界面
   execute if score temp glbs_common matches 4 run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_edit_mode
      
   # 10 >> 切换到玩家商店主界面
   execute if score temp glbs_common matches 10 run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_player_shop_main

   # 13 >> 切换到出售商店
   execute if score temp glbs_common matches 13 run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_sell_shop