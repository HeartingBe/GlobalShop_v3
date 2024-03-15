#> global_shop:logic/menu/handlers/menu_handler/change_mode/edit_cash_exchange
# @brief 切换到货币编辑页面
# @executor Menu

# 清除上一个页面，初始化自身数据，准备加载此页面
function global_shop:logic/menu/handlers/menu_handler/change_mode/reset_state_rotatable
# 读取货币的物品数据
function global_shop:storage/store_manager/get_cashinfo_list
# 取角度差 temp
execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
# 取 temp 最近的 12 的倍数
execute store result score temp glbs_common run function global_shop:utils/math_utils/get_recent_12_multiples
# 旋转
execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
function global_shop:logic/menu/handlers/menu_handler/rotate
# 更改模式
scoreboard players operation @s glbs_mode = Mode::EDIT_CASH_EXCHANGE glbs_common
# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7a欢迎编辑货币"]
# 生成物品展示实体
function global_shop:ui/display_manager/summon_whole_page_items
# 重置选择
scoreboard players set chosen_cash_index glbs_common -1
scoreboard players set chosen_cash_order glbs_common -1
# 重置输入
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0