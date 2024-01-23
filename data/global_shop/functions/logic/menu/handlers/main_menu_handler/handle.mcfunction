# @brief 主菜单逻辑
# @executor Menu

# 判断玩家右键
   # 获取右键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_exit_action
      # 玩家右键时，需要：
         # 直接通知玩家在主菜单右键无效
         # 更新 lastAction_
      execute if score temp glbs_common = RIGHT_CLICK glbs_common run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_exit

# 判断玩家看向新的物品
   # 获取看向的控件序号
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_viewed_item_order
   # 看向新的物品时，需要：
      # 选中物品展示实体，高亮并显示文本
      # 更新上一次看向的物品展示实体的序号 lastActionTarget_
      # 更新 lastAction_
      # 清除左键信息
   execute unless score temp glbs_common = @s glbs_last_action_target run return run function global_shop:logic/menu/handlers/main_menu_handler/handle/target_new_item
   
# 判断玩家左键
   # 获取左键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_select_action
   # 玩家左键时，需要：
      # 根据控件序号执行相应操作（就是 @s glbs_last_action_target）
      # 更新 lastAction_
      execute if score temp glbs_common = LEFT_CLICK glbs_common run function global_shop:logic/menu/handlers/main_menu_handler/handle/player_left_click