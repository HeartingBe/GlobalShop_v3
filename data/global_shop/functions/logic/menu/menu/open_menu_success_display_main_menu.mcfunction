# @executor Menu

# 取主菜单数据
data modify storage global_shop:common g_itemsToDisplay set from storage global_shop:menu_preset main
# 取角度差 temp1
execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
# 旋转
execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
function global_shop:logic/menu/handlers/menu_handler/rotate
# 申请临时世界实体
#execute at @s run function global_shop:logic/temp_world_entity_utils/carry_temp_world_entity
# 生成物品展示实体（注意：上面旋转，但是本函数的执行环境未改变，需要校正旋转角）
execute rotated as @s run function global_shop:logic/display_manager/summon_item_displays