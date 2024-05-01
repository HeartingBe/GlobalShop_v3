# @param global_shop:common admin_input 要禁止/允许使用商店的玩家
# @macro {name: string}
# @executor Admin

$scoreboard players set $(name) glbs_ban 1

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:common","nbt":"admin_input","color":"yellow"}," ",{"text":"✔","color":"green"}," \u00a7f-> ",{"text":"✖","color":"red"}]

# 玩家如果在使用商店，强制其退出
$execute as $(name) if score @s glbs_permission matches 0 on vehicle if entity @s[type=minecraft:block_display,tag=global_shop] on passengers if entity @s[type=minecraft:player] run function global_shop:logic/player/ban_deban_player/ban/force_exit

function global_shop:sound/fail