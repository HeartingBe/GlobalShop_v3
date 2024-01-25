# @brief 取绝对值
# @param temp（记分板传入）

execute if score temp glbs_common matches 0.. run return run scoreboard players get temp glbs_common

scoreboard players set temp2 glbs_common 0
return run scoreboard players operation temp2 glbs_common -= temp glbs_common