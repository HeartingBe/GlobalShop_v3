# @brief 玩家商店浏览逻辑
# @executor Menu

# 判断玩家右键
   # 获取右键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_back_action
      # 返回玩家商店主菜单
      execute if score temp glbs_common = RIGHT_CLICK glbs_common run return run function global_shop:logic/menu/handlers/player_shop_view_all_menu_handler/handle/player_back

# 玩家旋转
   # 取角度差 temp
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
   # 取 temp 最近的 12 的倍数
   execute store result score temp glbs_common run function global_shop:logic/math_utils/get_recent_12_multiples
   # 转换为列数差
   execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
   # 转动更新
   execute unless score g_columnDiff glbs_common matches 0 run return run function global_shop:logic/menu/handlers/player_shop_view_all_handler/rotate_and_update_items

# 判断玩家看向新的物品
   # 获取看向的控件序号
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/rotatable_menu_handler/get_viewed_item_order
   # 看向新的物品时，需要：TODO 检查更新
      # 选中物品展示实体，高亮并显示文本
      # 更新上一次看向的物品展示实体的序号 lastActionTarget_
      # 更新 lastAction_
      # 手动清除左键信息
   # log
   # tellraw @a ["lastActionTarget:",{"score":{"objective":"glbs_last_action_target","name":"@s"}}]
   execute unless score temp glbs_common = @s glbs_last_action_target run return run function global_shop:logic/menu/handlers/menu_handler/target_new_item
   
# 判断玩家左键
   # 获取左键情况 TODO 增加确认机制
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_select_action
   # 根据控件序号执行相应操作（就是 @s glbs_last_action_target）
   execute if score temp glbs_common = LEFT_CLICK glbs_common run function global_shop:logic/menu/handlers/player_shop_view_all_handler/handle/player_left_click