# 标记停止运行
execute if score g_enable glbs_common matches 1 run tellraw @a [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"stop\"","color":"red"}]
scoreboard players set g_enable glbs_common 0

schedule clear global_shop:init_classes/tip

# 强制所有玩家退出
execute as @e[type=minecraft:block_display,tag=global_shop] at @s run function global_shop:logic/menu/kill
kill @e[tag=glbs_killed]