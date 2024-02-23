#> global_shop:logic/menu/handlers/edit_main_menu_handler/handle/player_left_click
#
# 处理编辑菜单的左键操作
# @executor Menu

# 获取玩家看向的控件序号（就是 @s glbs_last_action_target_order）
scoreboard players operation temp glbs_common = @s glbs_last_action_target_order
   # log
   #execute on passengers if entity @s[type=minecraft:player] run title @s actionbar [{"score":{"objective":"glbs_common","name":"temp"}}]

   # 根据玩家点击的控件执行相应功能（目前用序号写死, 可考虑获取看向的控件 id, 便于维护和修改 ui 界面的排序）
      
      # 4 >> 添加要出售的物品
      execute if score temp glbs_common matches 4 run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/player_left_click/add_sell_item

      # 7 >> 编辑出售商店
      execute if score temp glbs_common matches 7 run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/player_left_click/change_mode/edit_view_sell_shop

      # 10 >> 添加回收的物品
      execute if score temp glbs_common matches 10 run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/player_left_click/add_recycle_item

      # 13 >> 编辑回收商店
      execute if score temp glbs_common matches 13 run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/player_left_click/change_mode/edit_view_recycle_shop