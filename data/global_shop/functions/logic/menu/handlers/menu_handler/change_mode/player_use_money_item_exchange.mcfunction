#> global_shop:logic/menu/handlers/menu_handler/change_mode/player_use_money_item_exchange
# @brief 切换到货币编辑页面
# @executor Menu

# 检查是否有别的 op 在编辑货币
scoreboard players set temp glbs_common 0
execute as @a if score @s glbs_permission = Permission::ADMIN glbs_common on vehicle if entity @s[type=minecraft:block_display,tag=global_shop] if score @s glbs_mode = Mode::EDIT_CASH_EXCHANGE glbs_common run scoreboard players add temp glbs_common 1
execute if score temp glbs_common matches 1.. on passengers if entity @s[type=minecraft:player] run return run function global_shop:logic/menu/handlers/menu_handler/change_mode/player_use_money_item_exchange/other_op
# 清除上一个页面，初始化自身数据，准备加载此页面
function global_shop:logic/menu/handlers/menu_handler/change_mode/reset_state
# 读取货币的物品数据
function global_shop:logic/menu/handlers/menu_handler/change_mode/player_use_money_item_exchange/get_cashinfo_list
# 取角度差 temp
execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
# 取 temp 最近的 12 的倍数
execute store result score temp glbs_common run function global_shop:utils/math_utils/get_recent_12_multiples
# 旋转
execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
function global_shop:logic/menu/handlers/menu_handler/rotate
# 更改模式
scoreboard players operation @s glbs_mode = Mode::PLAYER_USE_MONEY_ITEM_EXCHANGE glbs_common
# 通知
execute on passengers if entity @s[type=minecraft:player] run title @s actionbar [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.change_mode.cash","color":"aqua"}]
# 生成物品展示实体
function global_shop:ui/display_manager/summon_whole_page_items
# 重置选中的物品的编号
scoreboard players set @s glbs_last_target -1