# @executor Menu

# 获取玩家看向的控件序号（就是 @s glbs_last_action_target）
scoreboard players operation temp glbs_common = @s glbs_last_action_target
   # 玩家点击菜单外的地方
   execute if score temp glbs_common matches -1 run return 0
      # log
      execute on passengers if entity @s[type=minecraft:player] run title @s actionbar [{"score":{"objective":"glbs_common","name":"temp"}}]
   # 4 >> 出售物品
   execute if score temp glbs_common matches 4 run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/sell_item
   # 7 >> 切换到玩家商店浏览
   execute if score temp glbs_common matches 7 run function global_shop:logic/menu/handlers/menu_handler/change_mode/player_shop_view_all