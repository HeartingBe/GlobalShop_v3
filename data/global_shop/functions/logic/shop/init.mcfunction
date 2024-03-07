#> global_shop:logic/shop/init
# 添加记分板、创建常量、枚举等

# 发光实体显示的队伍
   # 确认删除的物品
   team add glbs_will_delete
      team modify glbs_will_delete color red
   # 确认购买的物品
   team add glbs_will_buy
      team modify glbs_will_buy color green
   # 确认回收的物品
   team add glbs_will_recycle
      team modify glbs_will_recycle color gold
   # 确认将被修改的选项或物品
   team add glbs_will_set
      team modify glbs_will_set color yellow

#定义
#define storage global_shop:common

# glbs_common 共用记分板，存储所有公共变量、常量等（已在 load.mcfunction 中创建）
   # 常量
      #define score_holder ITEM_NUM_PER_COLUMN
      #define score_holder SELL_ITEM_COOLING_TIME
      #define score_holder SELL_ITEM_EFFECTIVE_TIME
      scoreboard players set ITEM_NUM_PER_COLUMN glbs_common 3
      scoreboard players set ITEM_NUM_PER_PAGE glbs_common 27
      scoreboard players set SELL_ITEM_COOLING_TIME glbs_common 10
      # 3天 = 259200s
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
         scoreboard players set 2 glbs_common 2
         scoreboard players set 3 glbs_common 3
         scoreboard players set 7 glbs_common 7
         scoreboard players set 12 glbs_common 12
         scoreboard players set 27 glbs_common 27
      # 全局变量
         #define score_holder g_time
         #define score_holder g_registeredPlayerNum 当前注册玩家数量
         #define score_holder g_nextUid 下一个注册的玩家得到的UID
         #define score_holder g_nextPlayerShopId 下一个玩家上架物品的 id
         #define score_holder g_nextSellShopId 下一个管理员设置的出售商店物品的 id
         #define score_holder g_nextRecycleShopId 下一个管理员设置的回收商店物品的 id
         #define score_holder g_connectNum 同时使用商店的玩家数量
         # g_time
            scoreboard players add g_time glbs_common 0
            execute unless score g_time glbs_common matches 0.. run scoreboard players set g_time glbs_common 0
         # g_registeredPlayerNum
            scoreboard players add g_registeredPlayerNum glbs_common 0
            execute unless score g_registeredPlayerNum glbs_common matches 0.. run scoreboard players set g_registeredPlayerNum glbs_common 0
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
      #define score_holder Permission::PLAYER
      #define score_holder Permission::ADMIN
      scoreboard players set Permission::PLAYER glbs_common 0
      scoreboard players set Permission::ADMIN glbs_common 1
   # Menu 实体的模式 Mode
      #define score_holder Mode::MAIN
      #define score_holder Mode::PLAYER_SHOP_MAIN
      #define score_holder Mode::PLAYER_SHOP
      #define score_holder Mode::PLAYER_SHOP_VIEW_MY_BOUGHT
      #define score_holder Mode::PLAYER_SHOP_VIEW_SOLD
      #define score_holder Mode::PLAYER_SHOP_VIEW_MY_SELLING
      #define score_holder Mode::SELL_SHOP 在出售商店中查看所有物品
      #define score_holder Mode::RECYCLE_SHOP 在回收商店中查看所有物品
      #define score_holder Mode::MONEY_ITEM_EXCHANGE 
      #define score_holder Mode::EDIT_MODE 在编辑模式菜单中
      #define score_holder Mode::EDIT_VIEW_SELL_SHOP 在编辑模式中查看出售商店
      #define score_holder Mode::EDIT_VIEW_RECYCLE_SHOP 在编辑模式中查看回收商店
      #define score_holder Mode::EDIT_CASH_EXCHANGE 编辑货币兑换
      scoreboard players set Mode::MAIN glbs_common 0
      scoreboard players set Mode::PLAYER_SHOP_MAIN glbs_common 1
      scoreboard players set Mode::PLAYER_SHOP glbs_common 2
      scoreboard players set Mode::PLAYER_SHOP_VIEW_MY_BOUGHT glbs_common 3
      scoreboard players set Mode::PLAYER_SHOP_VIEW_MY_SOLD glbs_common 4
      scoreboard players set Mode::PLAYER_SHOP_VIEW_MY_SELLING glbs_common 5
      scoreboard players set Mode::SELL_SHOP glbs_common 6
      scoreboard players set Mode::RECYCLE_SHOP glbs_common 7
      scoreboard players set Mode::MONEY_ITEM_EXCHANGE glbs_common 8
      scoreboard players set Mode::EDIT_MODE glbs_common 9
      scoreboard players set Mode::EDIT_VIEW_SELL_SHOP glbs_common 10
      scoreboard players set Mode::EDIT_VIEW_RECYCLE_SHOP glbs_common 11
      scoreboard players set Mode::EDIT_CASH_EXCHANGE glbs_common 12
      
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
      #define score_holder ItemDataType::CONTROL 表示控件的物品
      #define score_holder ItemDataType::PLAYER_SHOP 玩家商店的物品
      #define score_holder ItemDataType::SELL_SHOP  出售商店的物品
      #define score_holder ItemDataType::RECYCLE_SHOP 回收商店的物品
      #define score_holder ItemDataType::MY_BOUGHT 玩家的购买记录中展示的物品
      #define score_holder ItemDataType::MY_SOLD 玩家出售记录中展示的物品
      #define score_holder ItemDataType::RETURN 玩家超时未卖出的回退物品
      #define score_holder ItemDataType::CASH 货币
      scoreboard players set ItemDataType::CONTROL glbs_common 0
      scoreboard players set ItemDataType::PLAYER_SHOP glbs_common 1
      scoreboard players set ItemDataType::SELL_SHOP glbs_common 2
      scoreboard players set ItemDataType::RECYCLE_SHOP glbs_common 3
      scoreboard players set ItemDataType::MY_BOUGHT glbs_common 4
      scoreboard players set ItemDataType::MY_SOLD glbs_common 5
      scoreboard players set ItemDataType::RETURN glbs_common 6
      scoreboard players set ItemDataType::CASH glbs_common 7
      # 控件 id
         #define score_holder CONTROL_NULL_ITEM 空
         #define score_holder CONTROL_DATAPACK_INFO 数据包信息
         #define score_holder CONTROL_ENTER_PLAYER_SHOP_MAIN 进入玩家商店的按钮
         #define score_holder CONTROL_ENTER_EDIT 进入编辑模式的按钮
         #define score_holder CONTROL_ENTER_SELL_SHOP 进入出售商店的按钮
         #define score_holder CONTROL_MONEY_ITEM_EXCHANGE 货币兑换的按钮
         #define score_holder CONTROL_ENTER_RECYCLE_SHOP 进入回收商店的按钮
         #define score_holder CONTROL_SELL_ITEM 
         #define score_holder CONTROL_VIEW_PLAYER_SHOP 浏览玩家商店的按钮
         #define score_holder CONTROL_VIEW_MY_SELLING 浏览自己上架的物品
         #define score_holder CONTROL_VIEW_MONEY 查询钱本
         #define score_holder CONTROL_VIEW_RETURN_ITEMS 查询回退的物品
         #define score_holder CONTROL_VIEW_MY_BOUGHT 查询购买记录
         #define score_holder CONTROL_VIEW_MY_SOLD 查询出售记录
         #define score_holder CONTROL_ADD_ITEM_TO_SELL_SHOP 添加物品到出售商店
         #define score_holder CONTROL_REMOVE_ITEM_FROM_SELL_SHOP 从出售商店移除物品
         #define score_holder CONTROL_ADD_ITEM_TO_RECYCLE_SHOP 添加物品到回收商店
         #define score_holder CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP 从回收商店移除物品
         #define score_holder CONTROL_COIN_EXCHANGE 货币交换
         #define score_holder CONTROL_CHANGE_EXCHANGE_RATE 更改货币兑换率
         #define score_holder CONTROL_SETTING_PAGE 设置页面
         #define score_holder CONTROL_EXIT_EDIT_MODE 退出编辑模式
         #define score_holder CONTROL_EDIT_CASH_ITEM 编辑货币的item
         #define score_holder CONTROL_EDIT_CASH_PRICE 编辑货币的价值
         #define score_holder CONTROL_CASH_SWITCH_STATUS 货币禁用开关
         #define score_holder CONTROL_DISABLED_CASH 被禁用的货币
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
         scoreboard players set CONTROL_ADD_ITEM_TO_SELL_SHOP glbs_common 14
         scoreboard players set CONTROL_REMOVE_ITEM_FROM_SELL_SHOP glbs_common 15
         scoreboard players set CONTROL_ADD_ITEM_TO_RECYCLE_SHOP glbs_common 16
         scoreboard players set CONTROL_REMOVE_ITEM_FROM_RECYCLE_SHOP glbs_common 17
         scoreboard players set CONTROL_TOGGLE_MONEY_EXCHANGE glbs_common 18
         scoreboard players set CONTROL_CHANGE_EXCHANGE_RATE glbs_common 19
         scoreboard players set CONTROL_SETTING_PAGE glbs_common 20
         scoreboard players set CONTROL_EXIT_EDIT_MODE glbs_common 21
         scoreboard players set CONTROL_EDIT_CASH_ITEM glbs_common 22
         scoreboard players set CONTROL_EDIT_CASH_PRICE glbs_common 23
         scoreboard players set CONTROL_CASH_SWITCH_STATUS glbs_common 24
         scoreboard players set CONTROL_DISABLED_CASH glbs_common 25

# 玩家相关记分板
   # glbs_uid 玩家 uid
   scoreboard objectives add glbs_uid dummy
   
   # glbs_money 玩家默认金钱记分板
   scoreboard objectives add glbs_money dummy

   # glbs_income 玩家收入记分板
   scoreboard objectives add glbs_income dummy

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

   # glbs_inputter_1 玩家输入
   scoreboard objectives add glbs_inputter_1 trigger

   # glbs_inputter_2 玩家输入
   scoreboard objectives add glbs_inputter_2 trigger
   
# glbs_mode 记录 Menu 实体 mode_ 记分板
scoreboard objectives add glbs_mode dummy

# glbs_last_view_order 记录 Menu 实体 lastActionTarget_ 记分板
scoreboard objectives add glbs_last_view_order dummy

# glbs_begin_index 记录 Menu 实体 beginIndex_ 记分板
scoreboard objectives add glbs_begin_index dummy

# glbs_last_action 记录 Menu 实体 lastAction_ 记分板
scoreboard objectives add glbs_last_action dummy

# glbs_last_view_id 记录 Menu 实体 lastAction_ 记分板（Menu 记录玩家看向的物品的 id，随旋转改变）
scoreboard objectives add glbs_last_view_id dummy

# glbs_last_target 玩家左键时记录，记录 -1 代表无效
   # 非旋转模式时 Menu 记录玩家左键的物品的 id
   # 旋转模式时 Menu 记录玩家左键的物品的 order
scoreboard objectives add glbs_last_target dummy

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

# glbs_order 记录物品展示实体的 order
scoreboard objectives add glbs_order dummy