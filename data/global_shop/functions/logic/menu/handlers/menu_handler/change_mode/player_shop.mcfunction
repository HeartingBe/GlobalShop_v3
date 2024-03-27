# @brief 切换到玩家商店
# @executor Menu

# 初始化自身数据
function global_shop:logic/menu/handlers/menu_handler/change_mode/reset_state_rotatable
# 取玩家商店物品数据
function global_shop:storage/store_manager/get_player_shop_list_page
# 取角度差 temp
execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
# 取 temp 最近的 12 的倍数
execute store result score temp glbs_common run function global_shop:utils/math_utils/get_recent_12_multiples
# 旋转
execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
function global_shop:logic/menu/handlers/menu_handler/rotate
# 更改模式
scoreboard players operation @s glbs_mode = Mode::PLAYER_SHOP glbs_common
# 通知
execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["\u00a7b玩家商店"]
# 生成物品展示实体
function global_shop:ui/display_manager/summon_whole_page_items
# 给玩家 inputter_1 和 inputter_2 权限（用于跳转）
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/handlers/menu_handler/change_mode/player_shop/enable_inputter