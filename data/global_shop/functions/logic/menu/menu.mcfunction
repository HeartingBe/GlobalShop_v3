# @brief 玩家打开商店
# @executor Player

# 限制同时使用商店的玩家数量
execute store result score ret glbs_common run function global_shop:logic/menu/menu/check_number_of_using_shop_player

execute unless score ret glbs_common = SUCCESS glbs_err_code run return run tellraw @s ["\u00a7c同时使用商店人数已达上限, 请稍后使用"]

# 检查玩家是否重复打开商店、检查维度
execute store result score ret glbs_common run function global_shop:logic/menu/menu/check_env

# 检查通过
execute if score ret glbs_common = SUCCESS glbs_err_code run function global_shop:logic/menu/menu/open_menu_success