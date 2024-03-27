# @brief 玩家打开商店
# @executor Player

# @other 已经 at @s

# 检查玩家是否注册
scoreboard players operation ret glbs_common = SUCCESS glbs_err_code
execute unless score @s glbs_uid matches -2147483648..2147483647 store result score ret glbs_common run function global_shop:storage/store_manager/register_player
execute unless score ret glbs_common = SUCCESS glbs_err_code run return run function global_shop:logic/menu/menu/reach_max_reg_limit

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