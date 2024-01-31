# 添加记分板、创建常量、枚举等

# glbs_common 共用记分板，存储所有公共变量、常量等（已在 load.mcfunction 中创建）
   # 常量
      #define score_holder ITEM_NUM_PER_COLUMN
      #define score_holder SELL_ITEM_COOLING_TIME
      #define score_holder SELL_ITEM_EFFECTIVE_TIME
      scoreboard players set ITEM_NUM_PER_COLUMN glbs_common 3
      scoreboard players set SELL_ITEM_COOLING_TIME glbs_common 10
      scoreboard players set SELL_ITEM_EFFECTIVE_TIME glbs_common 259200
         # 约束相关
            #define score_holder MAX_REGIST_PLAYER_NUM 最大注册玩家数量
            #define score_holder MAX_CONNECT_NUM
            #define score_holder PLAYER_MAX_SELL_AND_RETURN_NUM
            #define score_holder PLAYER_MAX_BOUGHT_NUM
            #define score_holder PLAYER_MAX_SOLD_NUM
            scoreboard players set MAX_REGIST_PLAYER_NUM glbs_common 1000
            scoreboard players set MAX_CONNECT_NUM glbs_common 8
            scoreboard players set PLAYER_MAX_SELL_AND_RETURN_NUM glbs_common 54
            scoreboard players set PLAYER_MAX_BOUGHT_NUM glbs_common 27
            scoreboard players set PLAYER_MAX_SOLD_NUM glbs_common 27
      # 常数
         scoreboard players set 3 glbs_common 3
         scoreboard players set 12 glbs_common 12
      # 全局变量
         #define score_holder g_time
         #define score_holder g_registPlayerNum 当前注册玩家数量
         #define score_holder g_nextUid 下一个注册的玩家得到的UID
         #define score_holder g_nextPlayerShopId
         #define score_holder g_nextSellShopId
         #define score_holder g_nextRecycleShopId
         # g_time
            scoreboard players add g_time glbs_common 0
            execute unless score g_time glbs_common matches 0.. run scoreboard players set g_time glbs_common 0
         # g_registPlayerNum
            scoreboard players add g_registPlayerNum glbs_common 0
            execute unless score g_registPlayerNum glbs_common matches 0.. run scoreboard players set g_registPlayerNum glbs_common 0
         # g_nextUid
            scoreboard players add g_nextUid glbs_common 0
            execute unless score g_nextUid glbs_common matches 1.. run scoreboard players set g_nextUid glbs_common 1
         # g_nextPlayerShopId
            scoreboard players add g_nextPlayerShopId glbs_common 0
            execute unless score g_nextPlayerShopId glbs_common matches 1.. run scoreboard players set g_nextPlayerShopId glbs_common 1
         # g_nextSellShopId
            scoreboard players add g_nextSellShopId glbs_common 0
            execute unless score g_nextSellShopId glbs_common matches 1.. run scoreboard players set g_nextSellShopId glbs_common 1
         # g_nextRecycleShopId
            scoreboard players add g_nextRecycleShopId glbs_common 0
            execute unless score g_nextRecycleShopId glbs_common matches 1.. run scoreboard players set g_nextRecycleShopId glbs_common 1
   # Permission 权限
      scoreboard players set Permission::PLAYER glbs_common 0
      scoreboard players set Permission::ADMIN glbs_common 1
   # Menu 实体的模式 Mode
      #define score_holder Mode::MAIN
      #define score_holder Mode::PLAYER_SHOP_MAIN
      #define score_holder Mode::PLAYER_SHOP_VIEW_ALL
      #define score_holder Mode::PLAYER_SHOP_VIEW_MY_BOUGHT
      #define score_holder Mode::PLAYER_SHOP_VIEW_SOLD
      #define score_holder Mode::PLAYER_SHOP_VIEW_SELLING
      #define score_holder Mode::SELL_SHOP_VIEW_ALL
      #define score_holder Mode::RECYCLE_SHOP_VIEW_ALL
      #define score_holder Mode::MONEY_ITEM_EXCHANGE
      #define score_holder Mode::EDIT
      #define score_holder Mode::EDIT_VIEW_SELL_SHOP
      #define score_holder Mode::EDIT_VIEW_RECYCLE_SHOP
      scoreboard players set Mode::MAIN glbs_common 0
      scoreboard players set Mode::PLAYER_SHOP_MAIN glbs_common 1
      scoreboard players set Mode::PLAYER_SHOP_VIEW_ALL glbs_common 2
      scoreboard players set Mode::PLAYER_SHOP_VIEW_MY_BOUGHT glbs_common 3
      scoreboard players set Mode::PLAYER_SHOP_VIEW_SOLD glbs_common 4
      scoreboard players set Mode::PLAYER_SHOP_VIEW_SELLING glbs_common 5
      scoreboard players set Mode::SELL_SHOP_VIEW_ALL glbs_common 6
      scoreboard players set Mode::RECYCLE_SHOP_VIEW_ALL glbs_common 7
      scoreboard players set Mode::MONEY_ITEM_EXCHANGE glbs_common 8
      scoreboard players set Mode::EDIT glbs_common 9
      scoreboard players set Mode::EDIT_VIEW_SELL_SHOP glbs_common 10
      scoreboard players set Mode::EDIT_VIEW_RECYCLE_SHOP glbs_common 11
   # 玩家操作类型 ACTION
      #define score_holder Action::NO_ACTION_THIS_PLAYER
      #define score_holder Action::LEFT_CLICK
      #define score_holder Action::LEFT_CLICK_CONFIRM
      #define score_holder Action::RIGHT_CLICK
      scoreboard players set Action::NO_ACTION_THIS_PLAYER glbs_common 0
      scoreboard players set Action::LEFT_CLICK glbs_common 1
      scoreboard players set Action::LEFT_CLICK_CONFIRM glbs_common 2
      scoreboard players set Action::RIGHT_CLICK glbs_common 3
   # 物品类型 ItemDataType
      #define score_holder ItemDataType::CONTROL
      #define score_holder ItemDataType::PLAYER_SHOP
      #define score_holder ItemDataType::SELL_SHOP
      #define score_holder ItemDataType::RECYCLE_SHOP
      #define score_holder ItemDataType::MY_BOUGHT
      #define score_holder ItemDataType::MY_BOUGHT_FROM_SELL_SHOP
      #define score_holder ItemDataType::MY_SOLD
      #define score_holder ItemDataType::MY_SOLD_TO_RECYCLE_SHOP
      #define score_holder ItemDataType::RETURN
      scoreboard players set ItemDataType::CONTROL glbs_common 0
      scoreboard players set ItemDataType::PLAYER_SHOP glbs_common 1
      scoreboard players set ItemDataType::SELL_SHOP glbs_common 2
      scoreboard players set ItemDataType::RECYCLE_SHOP glbs_common 3
      scoreboard players set ItemDataType::MY_BOUGHT glbs_common 4
      scoreboard players set ItemDataType::MY_BOUGHT_FROM_SELL_SHOP glbs_common 5
      scoreboard players set ItemDataType::MY_SOLD glbs_common 6
      scoreboard players set ItemDataType::MY_SOLD_TO_RECYCLE_SHOP glbs_common 7
      scoreboard players set ItemDataType::RETURN glbs_common 8
      # 控件 id
         #define score_holder CONTROL_NULL_ITEM
         #define score_holder CONTROL_DATAPACK_INFO
         #define score_holder CONTROL_ENTER_PLAYER_SHOP_MAIN
         #define score_holder CONTROL_ENTER_EDIT
         #define score_holder CONTROL_ENTER_SELL_SHOP
         #define score_holder CONTROL_MONEY_ITEM_EXCHANGE
         #define score_holder CONTROL_ENTER_RECYCLE_SHOP
         #define score_holder CONTROL_SELL_ITEM
         #define score_holder CONTROL_VIEW_PLAYER_SHOP
         #define score_holder CONTROL_VIEW_MY_SELLING
         #define score_holder CONTROL_VIEW_MONEY
         #define score_holder CONTROL_VIEW_RETURN_ITEMS
         #define score_holder CONTROL_VIEW_MY_BOUGHT
         #define score_holder CONTROL_VIEW_MY_SOLD
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
   # glbs_uid 玩家 uid
   scoreboard objectives add glbs_uid trigger

   # open_global_shop 玩家触发记分板
   scoreboard objectives add open_global_shop trigger

   # glbs_permission 玩家权限记分板
   scoreboard objectives add glbs_permission dummy

   # glbs_sell_num 玩家上架物品数量
   scoreboard objectives add glbs_sell_num dummy

   # glbs_return_num 玩家回退物品数量
   scoreboard objectives add glbs_return_num dummy

   # glbs_sell_item_cooling_time 玩家上架物品冷却（单位 s）
   scoreboard objectives add glbs_sell_item_cooling_time dummy

   # glbs_sell_item_price 玩家指定出售物品的价格
   scoreboard objectives add glbs_sell_item_price trigger
   
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
#define score_holder SUCCESS 成功
#define score_holder INVALID_ENV 环境错误
#define score_holder NO_PERMISSION 没有权限
#define score_holder REGIST_PLAYER_NUM_LIMIT 超过注册玩家数量限制
#define score_holder OTHER_ERROR 其他错误
scoreboard players set SUCCESS glbs_err_code 0
scoreboard players set INVALID_ENV glbs_err_code -1
scoreboard players set NO_PERMISSION glbs_err_code -2
scoreboard players set REGIST_PLAYER_NUM_LIMIT glbs_err_code -3
scoreboard players set OTHER_ERROR glbs_err_code -10000

# glbs_id 记录物品展示实体的 id（控件 id 固定，无需使用这个记分板）
scoreboard objectives add glbs_id dummy

# glbs_order 记录物品展示实体的 order
scoreboard objectives add glbs_order dummy