# @brief 玩家打开商店
# @executor Player

# 检查玩家是否注册
scoreboard players operation ret glbs_common = SUCCESS glbs_err_code
execute unless score @s glbs_uid matches -2147483648..2147483647 store result score ret glbs_common run function global_shop:logic/store_manager/register_player
execute unless score ret glbs_common = SUCCESS glbs_err_code run return run tellraw @s ["\u00a7c全球商店注册玩家数量达到上限, 已停止注册"]

# 限制同时使用商店的玩家数量
execute store result score ret glbs_common run function global_shop:logic/menu/menu/check_number_of_using_shop_player
execute unless score ret glbs_common = SUCCESS glbs_err_code run return run tellraw @s ["\u00a7c同时使用商店人数已达上限, 请稍后使用"]

# 检查玩家是否重复打开商店、检查维度
execute store result score ret glbs_common run function global_shop:logic/menu/menu/check_env

# 检查周围 10 格内是否有玩家正在使用商店
execute store result score ret glbs_common run function global_shop:logic/menu/menu/check_if_player_using_shoop_around
execute if score ret glbs_common matches 1 run return run tellraw @s ["\u00a7c周围有玩家在使用商店, 请相隔一定距离"]

# 检查通过
function global_shop:logic/menu/menu/open_menu_success