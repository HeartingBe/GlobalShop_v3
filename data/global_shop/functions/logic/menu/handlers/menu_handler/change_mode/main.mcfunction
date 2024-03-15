# @brief 切换到玩家商店主界面
# @param g_columnIncrement 列数校准值，大于 0 时让 Menu 往右转，会看向靠左的位置，反之同理
# @executor Menu

# 初始化自身数据
function global_shop:logic/menu/handlers/menu_handler/change_mode/reset_state
# 取主菜单数据
data modify storage global_shop:common g_itemsToDisplay set from storage global_shop:menu_preset_and_control main
# 取角度差 temp
execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
# 取 temp 最近的 12 的倍数
execute store result score temp glbs_common run function global_shop:utils/math_utils/get_recent_12_multiples
# 旋转
execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
scoreboard players operation g_columnDiff glbs_common += g_columnIncrement glbs_common
function global_shop:logic/menu/handlers/menu_handler/rotate
# 更改模式
scoreboard players operation @s glbs_mode = Mode::MAIN glbs_common
# 生成物品展示实体
function global_shop:ui/display_manager/summon_whole_page_items