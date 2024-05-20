execute if entity @s[tag=glbs_kill_delay] run return run tag @s remove glbs_kill_delay

execute if entity @s[type=minecraft:text_display] on passengers run function global_shop:logic/text_display/kill

kill @s