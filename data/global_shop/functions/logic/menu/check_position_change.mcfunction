# @brief 检查商店坐标有没有变化
# @executor Menu
# @return 0 - 改变；1 - 未改变

execute store result score x glbs_common run data get entity @s Pos[0]
execute store result score y glbs_common run data get entity @s Pos[1]
execute store result score z glbs_common run data get entity @s Pos[2]

execute if score x glbs_common = @s glbs_x if score y glbs_common = @s glbs_y if score z glbs_common = @s glbs_z run return 1

return 0