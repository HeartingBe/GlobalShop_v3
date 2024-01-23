# @brief 传入一个数，返回距离其最近的 12 的倍数，例如输入 -40 返回 -36，输入 59 返回 60
# @param temp（记分板传入）

scoreboard players operation temp2 glbs_common = temp glbs_common
scoreboard players operation temp3 glbs_common = temp glbs_common


scoreboard players operation temp2 glbs_common %= 12 glbs_common
scoreboard players operation temp3 glbs_common /= 12 glbs_common

execute if score temp glbs_common matches 0.. if score temp2 glbs_common matches 6.. run scoreboard players add temp3 glbs_common 1
execute if score temp glbs_common matches ..-1 if score temp2 glbs_common matches 6.. run scoreboard players add temp3 glbs_common 1

return run scoreboard players operation temp3 glbs_common *= 12 glbs_common