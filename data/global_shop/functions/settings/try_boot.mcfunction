# @brief 启动全球商店运行，由管理员调用

tellraw @s ["--------------------------------"]
tellraw @s ["\u00a7a正在启动全球商店数据包..."]

scoreboard players reset * open_global_shop

# 版本不对应
# tag 版本号修改点
execute unless score g_version glbs_common matches 0 run tellraw @s ["\u00a7c全球商店启动失败, 原因：服务器运行过更高版本的全球商店(版本号 ",{"score":{"objective":"glbs_common","name":"g_version"}},"\u00a7c), 当前安装的版本号为 \u00a7f0\u00a7c, 请更换对应版本的全球商店数据包"]
execute unless score g_version glbs_common matches 0 run tellraw @s ["\u00a7c全球商店数据包启动失败"]
execute unless score g_version glbs_common matches 0 run return run tellraw @s ["--------------------------------"]

# 连锁命令数不足
execute store result score temp glbs_common run gamerule maxCommandChainLength
execute if score temp glbs_common matches ..65535 run tellraw @s ["\u00a7c全球商店启动失败, 原因：连锁命令数过低, 当前为 ",{"score":{"objective":"glbs_common","name":"temp"},"color":"white"},"\u00a7c,\n至少应为原版默认的 \u00a7e65536\u00a7c。","\n\u00a7c鼠标",{"text":"移到此处","color":"yellow","underlined":true,"clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength ?"},"hoverEvent":{"action":"show_text","contents":["\u00a7a执行：\u00a77/gamerule maxCommandChainLength ?\n\u00a7a左键点击来将命令填入聊天栏\n\n\u00a7e请将 ? 替换为连锁命令数"]}},"\u00a7c来修改连锁命令数\n",{"text":"点击此处","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_boot"}},"\u00a7c来尝试启动运行全球商店"]
execute if score temp glbs_common matches ..65535 run tellraw @s ["\u00a7c全球商店数据包启动失败"]
execute if score temp glbs_common matches ..65535 run return run tellraw @s ["--------------------------------"]

# 成功
scoreboard players set g_enable glbs_common 1
execute as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s ["\u00a7a全球商店成功启动运行"]
execute as @a at @s run function global_shop:sound/success
tellraw @s ["--------------------------------"]