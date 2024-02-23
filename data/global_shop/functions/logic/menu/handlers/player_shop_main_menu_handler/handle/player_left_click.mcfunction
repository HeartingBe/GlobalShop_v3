# @executor Menu

# 获取玩家看向的控件序号（就是 @s glbs_last_action_target_order）
scoreboard players operation temp glbs_common = @s glbs_last_action_target_order
   # log
   #execute on passengers if entity @s[type=minecraft:player] run title @s actionbar [{"score":{"objective":"glbs_common","name":"temp"}}]

   # 根据玩家点击的控件执行相应功能（目前用序号写死, 可考虑获取看向的控件 id, 便于维护和修改 ui 界面的排序）
      # 4 >> 出售物品
      execute if score temp glbs_common matches 4 run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/sell_item

      # 7 >> 切换到玩家商店浏览
      execute if score temp glbs_common matches 7 run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/change_mode_to_player_shop

      # 13 >> 获取自己余额
      execute if score temp glbs_common matches 13 run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/tellraw_money

      # 19 >> 切换到玩家浏览自己的历史购买物品
      execute if score temp glbs_common matches 19 run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/change_mode_to_player_shop_view_my_bought

      execute if score temp glbs_common matches 22 run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/change_mode_to_player_shop_view_my_sold