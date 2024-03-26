#> global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle
# @brief 货币交易菜单的逻辑
# @executor Menu

# 管理员输入
# tag 玩家输入
execute on passengers if entity @s[type=minecraft:player] unless score @s glbs_inputter_1 matches 0 run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price

# 判断玩家右键
   # 获取右键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_back_action
      # 如果点击了右键，返回上一级菜单
      execute if score temp glbs_common = Action::RIGHT_CLICK glbs_common run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_back

# 判断玩家看向新的物品
   # 获取看向的控件序号
   execute store result score targetOrder glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_viewed_item_order
   # 看向新的物品时
   execute unless score targetOrder glbs_common = @s glbs_last_view_order run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/target_new_item

# 判断玩家左键
   # 获取左键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_select_action
   # 根据控件序号执行相应操作（就是 @s glbs_last_view_order），修改对应的货币
   execute unless score temp glbs_common = Action::NO_ACTION_THIS_PLAYER glbs_common run return run function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/player_left_click