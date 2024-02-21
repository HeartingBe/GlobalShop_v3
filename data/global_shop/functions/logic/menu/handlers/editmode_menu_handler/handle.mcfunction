#> global_shop:logic/menu/handlers/editmode_menu_handler/handle
# @brief 编辑菜单主逻辑
# @executor Menu

# 判断玩家出售物品
execute on passengers if entity @s[type=minecraft:player] unless score @s glbs_sell_item_price matches 0 run function global_shop:logic/menu/handlers/editmode_menu_handler/handle/player_sell_item

# 判断玩家右键
   # 获取右键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_back_action
      # 返回主菜单
      execute if score temp glbs_common = Action::RIGHT_CLICK glbs_common run return run function global_shop:logic/menu/handlers/editmode_menu_handler/handle/player_back

# 判断玩家看向新的物品
   # 获取看向的控件序号
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_viewed_item_order
   # 看向新的物品时
   execute unless score temp glbs_common = @s glbs_last_action_target_order run return run function global_shop:logic/menu/handlers/menu_handler/target_new_item
   
# 判断玩家左键
   # 获取左键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_select_action
   # 根据控件序号执行相应操作（就是 @s glbs_last_action_target_order）
   execute if score temp glbs_common = Action::LEFT_CLICK glbs_common run function global_shop:logic/menu/handlers/editmode_menu_handler/handle/player_left_click