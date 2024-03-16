# @brief 切换到浏览出售商店
# @executor Menu

# 清除上一个页面，初始化自身数据，准备加载此页面
function global_shop:logic/menu/handlers/menu_handler/change_mode/reset_state_rotatable
# 读取出售商店的物品数据
function global_shop:storage/store_manager/get_sell_shop_list_page
# 取角度差 temp
execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
# 取 temp 最近的 12 的倍数
execute store result score temp glbs_common run function global_shop:utils/math_utils/get_recent_12_multiples
# 旋转
execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
function global_shop:logic/menu/handlers/menu_handler/rotate
# 更改模式
scoreboard players operation @s glbs_mode = Mode::EDIT_VIEW_SELL_SHOP glbs_common
# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7a出售商店编辑界面"]
# 生成物品展示实体
function global_shop:ui/display_manager/summon_whole_page_items