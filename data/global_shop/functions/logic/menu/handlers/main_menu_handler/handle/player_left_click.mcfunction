# @executor Menu

# 获取玩家看向的控件序号（就是 @s glbs_last_action_target_order）
scoreboard players operation temp glbs_common = @s glbs_last_action_target_order

   # 玩家点击菜单外的地方
   execute if score temp glbs_common matches -1 run return run function global_shop:logic/menu/handlers/menu_handler/handle/player_left_click/null

   # log
   execute on passengers if entity @s[type=minecraft:player] run title @s actionbar [{"score":{"objective":"glbs_common","name":"temp"}}]
      
   # 10 >> 切换到玩家商店主界面
   execute if score temp glbs_common matches 10 run function global_shop:logic/menu/handlers/menu_handler/change_mode/player_shop_main