# @executor Menu

# 获取玩家看向的控件序号（就是 @s glbs_last_view_order）
scoreboard players operation temp glbs_common = @s glbs_last_view_order
   # log
   #execute on passengers if entity @s[type=minecraft:player] run title @s actionbar [{"score":{"objective":"glbs_common","name":"temp"}}]

   # 4 >> 切换到编辑模式界面
   execute if score temp glbs_common matches 4 run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_edit_mode

   # 7 >> 玩家个人设置
   execute if score temp glbs_common matches 7 run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_player_setting

   # 10 >> 切换到货币兑换页面
   execute if score temp glbs_common matches 10 run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_player_cash_exchange

   # 12 >> 项目信息
   execute if score temp glbs_common matches 12 on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/pack_info

   # 13 >> welcome
   execute if score temp glbs_common matches 13 on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/welcome

   # 16 >> 切换到玩家商店主界面
   execute if score temp glbs_common matches 16 run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_player_shop_main

   # 19 >> 切换到出售商店
   execute if score temp glbs_common matches 19 run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_sell_shop

   # 22 >> 切换到回收商店
   execute if score temp glbs_common matches 22 run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click/change_mode_to_recycle_shop