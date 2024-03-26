# @brief 初始化玩家相关记录的记分板（与本次使用商店相关的记分板，而不是长期记录的记分板）
# @executor Player

function global_shop:logic/inputter/reset_and_disable
scoreboard players reset @s glbs_leave_game
scoreboard players reset @s glbs_use_time