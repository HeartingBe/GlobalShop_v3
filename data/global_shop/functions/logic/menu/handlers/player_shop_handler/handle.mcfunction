# @brief 玩家商店浏览逻辑
# @executor Menu

# 判断玩家右键
   # 获取右键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_back_action
      # 返回玩家商店主菜单
      execute if score temp glbs_common = Action::RIGHT_CLICK glbs_common run return run function global_shop:logic/menu/handlers/player_shop_handler/handle/player_back

# 玩家旋转
   # 取角度差 temp
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
   # 取 temp 最近的 12 的倍数
   execute store result score temp glbs_common run function global_shop:utils/math_utils/get_recent_12_multiples
   # 转换为列数差
   execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
   # 转动更新
   execute unless score g_columnDiff glbs_common matches 0 run function global_shop:logic/menu/handlers/player_shop_handler/rotate_and_update_items

# 判断玩家看向新的物品实体
   # 获取看向的控件序号
   execute store result score targetOrder glbs_common run function global_shop:logic/menu/handlers/rotatable_menu_handler/get_viewed_item_order
   # 看向新的物品时，检查物品。存在时展示信息，不存在时刷新
      # glbs_last_view_order 记录 0 说明 看向的物品为空项 或者 没有看向物品 或者 物品不存在
   execute unless score targetOrder glbs_common = @s glbs_last_view_order run return run function global_shop:logic/menu/handlers/player_shop_handler/target_new_item

# 判断玩家输入
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/player_shop_handler/handle/check_player_input
   
# 判断玩家左键
   # 获取左键情况
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/rotatable_menu_handler/get_select_action
   # 根据控件序号执行相应操作（就是 @s glbs_last_view_order）
   execute unless score temp glbs_common = Action::NO_ACTION_THIS_PLAYER glbs_common run function global_shop:logic/menu/handlers/player_shop_handler/handle/player_left_click