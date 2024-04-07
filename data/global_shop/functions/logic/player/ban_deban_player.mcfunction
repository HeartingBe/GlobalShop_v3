# @param global_shop:common admin_input 要禁止/允许使用商店的玩家
# @param playerUid 玩家的 uid
# @executor Admin

scoreboard players set banState glbs_common 0
# 用玩家名字构造宏参数
data remove storage global_shop:common temp
data modify storage global_shop:common temp.name set from storage global_shop:common admin_input
function global_shop:logic/player/get_ban_state with storage global_shop:common temp

# 玩家原先被禁止，执行允许逻辑
execute if score banState glbs_common matches 1 run return run function global_shop:logic/player/ban_deban_player/deban with storage global_shop:common temp

# 执行禁止逻辑
function global_shop:logic/player/ban_deban_player/ban with storage global_shop:common temp