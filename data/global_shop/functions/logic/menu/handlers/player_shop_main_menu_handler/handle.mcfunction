# @brief 玩家商店主菜单逻辑
# @executor Menu

# 判断玩家右键
   # 获取右键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_back_action
      # 返回主菜单
      execute if score temp glbs_common = RIGHT_CLICK glbs_common run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_back

# 判断玩家看向新的物品
   # 获取看向的控件序号
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_viewed_item_order
   # 看向新的物品时，需要：
      # 高亮物品展示实体，并显示文本
      # 更新上一次看向的物品展示实体的序号 lastActionTarget_
      # 重置 lastAction_
      # 清除左键信息
   execute unless score temp glbs_common = @s glbs_last_action_target run return run function global_shop:logic/menu/handlers/menu_handler/target_new_item
   
# 判断玩家左键
   # 获取左键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_select_action
   # 根据控件序号执行相应操作（就是 @s glbs_last_action_target）
   execute if score temp glbs_common = LEFT_CLICK glbs_common run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click