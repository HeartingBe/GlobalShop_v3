# @brief 检查是否达到同时使用商店的最大玩家数量，管理员不受限制
# @executor Player
# @return ErrCode

execute store result score temp glbs_common if entity @e[type=minecraft:block_display,tag=global_shop]

execute if score temp glbs_common < MAX_CONNECT_PLAYERS glbs_common run return run scoreboard players get SUCCESS glbs_err_code
execute if score @s glbs_permission = PERMISSION_ADMIN glbs_common run return run scoreboard players get SUCCESS glbs_err_code

return run scoreboard players get OTHER_ERROR glbs_err_code