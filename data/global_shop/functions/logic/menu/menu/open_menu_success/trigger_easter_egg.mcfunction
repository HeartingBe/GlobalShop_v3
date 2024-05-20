# @executor Player

# temp 为 0 表示彩蛋触发失败，为 1 表示成功
scoreboard players set temp glbs_common 0

execute as @e[type=minecraft:chest_minecart,distance=..5,sort=random,limit=1] store result score temp glbs_common run function global_shop:logic/menu/menu/open_menu_success/easter_egg

execute if score temp glbs_common matches 0 run return 0

advancement grant @s only global_shop:trigger_easter_egg