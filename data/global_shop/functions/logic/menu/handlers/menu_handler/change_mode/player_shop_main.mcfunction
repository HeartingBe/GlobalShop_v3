# @brief 切换到玩家商店主界面
# @executor Menu

# 初始化自身数据
   # 清除左右键信息
   execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/clear_left_and_right_click_action
   # 初始化 lastAction_
   scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common
   # 上一个看向的目标
   scoreboard players reset @s glbs_last_action_target
# 取玩家商店主菜单数据
data modify storage global_shop:common g_itemsToDisplay set from storage global_shop:menu_preset_and_control player_shop_main
# 取角度差 temp
execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
# 取 temp 最近的 12 的倍数
execute store result score temp glbs_common run function global_shop:logic/math_utils/get_recent_12_multiples
# 旋转
execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
function global_shop:logic/menu/handlers/menu_handler/rotate
# 申请临时世界实体
#execute at @s run function global_shop:logic/temp_world_entity_utils/carry_temp_world_entity
# 清除周围所有物品展示实体
execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/item_display_entity/kill
# 更改模式
scoreboard players operation @s glbs_mode = Mode::PLAYER_SHOP_MAIN glbs_common
# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7a欢迎使用玩家商店"]
# 生成物品展示实体（注意：上面旋转，但是本函数的执行环境未改变，需要校正旋转角）
execute rotated as @s run function global_shop:ui/display_manager/summon_whole_page_items
# 重置玩家指定出售价格记分板（避免玩家在非玩家商店主界面指定价格，未及时处理，等进入界面后突然卖出物品）
execute on passengers if entity @s[type=minecraft:player] run scoreboard players set @s glbs_sell_item_price 0