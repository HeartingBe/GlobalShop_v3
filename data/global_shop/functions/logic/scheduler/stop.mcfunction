schedule clear global_shop:logic/scheduler/10t

# 标记停止运行
scoreboard players set g_enable glbs_common 0

tellraw @a ["\u00a7c全球商店数据包已停止运行"]

# 强制所有玩家退出
execute as @e[type=minecraft:block_display,tag=global_shop] at @s run function global_shop:logic/menu/kill
kill @e[tag=glbs_killed]