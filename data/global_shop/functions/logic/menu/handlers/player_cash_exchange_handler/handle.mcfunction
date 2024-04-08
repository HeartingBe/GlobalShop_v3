# @brief 玩家兑换货币的逻辑
# @executor Menu

# 判断玩家右键
   # 获取右键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_back_action
      # 返回主菜单
      execute if score temp glbs_common = Action::RIGHT_CLICK glbs_common run return run function global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_back

# 判断玩家看向新的物品
   # 获取看向的控件序号
   execute store result score targetOrder glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_viewed_item_order
   # 看向新的物品时
   execute unless score targetOrder glbs_common = @s glbs_last_view_order run return run function global_shop:logic/menu/handlers/menu_handler/target_new_item

# 判断玩家左键
   # 获取左键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_select_action
   # 根据控件序号执行相应操作（就是 @s glbs_last_view_order）
   execute if score temp glbs_common = Action::LEFT_CLICK glbs_common run function global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_left_click