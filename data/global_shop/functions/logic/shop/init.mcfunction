# 添加记分板、创建常量、枚举等

# glbs_common 共用记分板，存储所有公共变量、常量等（已在 load.mcfunction 中创建）
   # 常量
      scoreboard players set ITEM_NUM_PER_COLUMN glbs_common 3
      # 常数
      scoreboard players set 3 glbs_common 3
      scoreboard players set 12 glbs_common 12
      # 约束相关
      scoreboard players set MAX_REGIST_PLAYER_NUM glbs_common 1000
      scoreboard players set MAX_CONNECT_NUM glbs_common 8
      scoreboard players set PLAYER_MAX_SELLING_NUM glbs_common 54
      scoreboard players set PLAYER_MAX_BOUGHT_NUM glbs_common 27
      scoreboard players set PLAYER_MAX_SOLD_NUM glbs_common 27
      # 权限
      scoreboard players set PERMISSION_PLAYER glbs_common 0
      scoreboard players set PERMISSION_ADMIN glbs_common 1
      # Menu 实体的模式 Mode
      scoreboard players set MODE_MAIN glbs_common 0
      scoreboard players set MODE_PLAYER_SHOP_MAIN glbs_common 1
      scoreboard players set MODE_PLAYER_SHOP_VIEW_ALL glbs_common 2
      scoreboard players set MODE_PLAYER_SHOP_VIEW_MY_BOUGHT glbs_common 3
      scoreboard players set MODE_PLAYER_SHOP_VIEW_SOLD glbs_common 4
      scoreboard players set MODE_PLAYER_SHOP_VIEW_SELLING glbs_common 5
      scoreboard players set MODE_SELL_SHOP_VIEW_ALL glbs_common 6
      scoreboard players set MODE_RECYCLE_SHOP_VIEW_ALL glbs_common 7
      scoreboard players set MODE_MONEY_ITEM_EXCHANGE glbs_common 8
      scoreboard players set MODE_EDIT glbs_common 9
      scoreboard players set MODE_EDIT_VIEW_SELL_SHOP glbs_common 10
      scoreboard players set MODE_EDIT_VIEW_RECYCLE_SHOP glbs_common 11
      # ACTION
      scoreboard players set NO_ACTION_THIS_PLAYER glbs_common 0
      scoreboard players set LEFT_CLICK glbs_common 1
      scoreboard players set LEFT_CLICK_CONFIRM glbs_common 2
      scoreboard players set RIGHT_CLICK glbs_common 3
      # 控件 id
      scoreboard players set CONTROL_NULL_ITEM glbs_common 0
      scoreboard players set CONTROL_DATAPACK_INFO glbs_common 1
      scoreboard players set CONTROL_ENTER_PLAYER_SHOP_MAIN glbs_common 2
      scoreboard players set CONTROL_ENTER_EDIT glbs_common 3
      scoreboard players set CONTROL_ENTER_SELL_SHOP glbs_common 4
      scoreboard players set CONTROL_MONEY_ITEM_EXCHANGE glbs_common 5
      scoreboard players set CONTROL_ENTER_RECYCLE_SHOP glbs_common 6
      scoreboard players set CONTROL_SELL_ITEM glbs_common 7
      scoreboard players set CONTROL_VIEW_PLAYER_SHOP glbs_common 8
      scoreboard players set CONTROL_VIEW_MY_SELLING glbs_common 9
      scoreboard players set CONTROL_VIEW_MONEY glbs_common 10
      scoreboard players set CONTROL_VIEW_RETURN_ITEMS glbs_common 11
      scoreboard players set CONTROL_VIEW_MY_BOUGHT glbs_common 12
      scoreboard players set CONTROL_VIEW_MY_SOLD glbs_common 13

# 玩家相关记分板
   # open_global_shop 玩家触发记分板
   scoreboard objectives add open_global_shop trigger

   # glbs_permission 玩家权限记分板
   scoreboard objectives add glbs_permission dummy

   # glbs_sell_num 玩家上架物品数量
   scoreboard objectives add glbs_sell_num dummy

   # glbs_return_num 玩家回退物品数量
   scoreboard objectives add glbs_return_num dummy

# glbs_mode 记录 Menu 实体 mode_ 记分板
scoreboard objectives add glbs_mode dummy

# glbs_last_action_target 记录 Menu 实体 lastActionTarget_ 记分板
scoreboard objectives add glbs_last_action_target dummy

# glbs_begin_index 记录 Menu 实体 beginIndex_ 记分板
scoreboard objectives add glbs_begin_index dummy

# glbs_last_action 记录 Menu 实体 lastAction_ 记分板
scoreboard objectives add glbs_last_action dummy

# glbs_err_code 错误码记分板
scoreboard objectives add glbs_err_code dummy
scoreboard players set SUCCESS glbs_err_code 0
scoreboard players set INVALID_ENV glbs_err_code -1
scoreboard players set NO_PERMISSION glbs_err_code -2
scoreboard players set OTHER_ERROR glbs_err_code -10000

# glbs_id 记录物品展示实体的 id（控件 id 固定，无需使用这个记分板）
scoreboard objectives add glbs_id dummy

# glbs_order 记录物品展示实体的 order
scoreboard objectives add glbs_order dummy

# glbs_sell_item 玩家指定出售物品的价格
scoreboard objectives add glbs_sell_item trigger