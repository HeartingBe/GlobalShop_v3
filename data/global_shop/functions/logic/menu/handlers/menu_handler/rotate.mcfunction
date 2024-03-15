# @brief 商店实体根据列数差转动自身（注意是列数差，不是角度差）
# @param g_columnDiff 列数差
# @executor Menu

scoreboard players operation temp glbs_common = g_columnDiff glbs_common
data remove storage global_shop:common temp
execute store result storage global_shop:common temp.roundedAngleDiff int 1 run scoreboard players operation temp glbs_common *= 12 glbs_common
function global_shop:logic/menu/handlers/menu_handler/rotate/macro_tp with storage global_shop:common temp

# 记录自身水平旋转角，用于后续生成新的物品展示实体
execute store result score g_baseRotation glbs_common run data get entity @s Rotation[0]