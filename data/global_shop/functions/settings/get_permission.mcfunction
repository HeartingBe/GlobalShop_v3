# @brief 玩家执行该函数，获得商店管理员权限
# @executor Player

scoreboard players operation @s glbs_permission = Permission::ADMIN glbs_common
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},"\u00a7eYou are now GlobalShop op!"]
execute at @s run function global_shop:sound/success