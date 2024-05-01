# @brief 玩家打开商店
# @executor Player

# @other 已经 at @s

# 保证记分板有分数
scoreboard players add @s glbs_permission 0

# 检查玩家是否注册
scoreboard players set ret glbs_common 0
execute unless score @s glbs_uid matches -2147483648..2147483647 store result score ret glbs_common run function global_shop:storage/store_manager/register_player
execute if score ret glbs_common matches 1 run return 0

# 检查玩家是否被禁用商店（管理员被封禁也可以打开）
execute if score @s glbs_ban matches 1 if score @s glbs_permission matches 0 run return run function global_shop:logic/menu/menu/banned

# 限制同时使用商店的玩家数量，使用的玩家数量存储在 g_connectNum glbs_common
execute if score g_connectNum glbs_common >= MAX_CONNECT_NUM glbs_common unless score @s glbs_permission = Permission::ADMIN glbs_common run return run function global_shop:logic/menu/menu/reach_max_use_limit

# 检查玩家是否重复打开商店、检查维度
execute store result score ret glbs_common run function global_shop:logic/menu/menu/check_env
execute if score ret glbs_common matches 1 run return 0

# 检查周围 10 格内是否有玩家正在使用商店
execute store result score ret glbs_common run function global_shop:logic/menu/menu/check_if_player_using_shop_around
execute if score ret glbs_common matches 1 run return run function global_shop:logic/menu/menu/player_using_shop_around

# 检查周围非法方块
execute if predicate global_shop:near_invalid_block run return run function global_shop:logic/menu/menu/invalid_block

# 检查通过
function global_shop:logic/menu/menu/open_menu_success