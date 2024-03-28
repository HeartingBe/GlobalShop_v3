# @brief 启动全球商店运行，由服务器管理员调用
# @executor op

# 给该 op 权限
execute unless score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [{"text":"已将你设置为商店管理员","color":"green"}]
scoreboard players operation @s glbs_permission = Permission::ADMIN glbs_common

scoreboard players reset * open_global_shop

# 版本不对应
# tag 版本号修改点
execute unless score g_version glbs_common matches 0 if score g_version glbs_common matches 1.. run return run tellraw @s [{"text":"全球商店启动失败","color":"red"},"\n",{"text":"因为这个游戏存档运行过更高版本的全球商店, 版本号为 ","color":"red"},{"score":{"objective":"glbs_common","name":"g_version"},"color":"yellow"},"\n",{"text":"当前安装的版本号为 ","color":"red"},"\u00a7f0\n",{"text":"请更换对应版本的全球商店数据包","color":"red"}]

# 连锁命令数不足
execute store result score temp glbs_common run gamerule maxCommandChainLength
execute if score temp glbs_common matches ..65535 run return run tellraw @s [{"text":"全球商店启动失败","color":"red"},"\n",{"text":"因为连锁命令数过低, 当前为 ","color":"red"},{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"},"\n",{"text":"至少应为原版默认的 65536","color":"red"},{"text":"光标移到这里来修改连锁命令数","color":"yellow","clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength ?"},"hoverEvent":{"action":"show_text","contents":[{"text":"执行:","color":"green"},"\n",{"text":" /gamerule maxCommandChainLength ?","color":"gray"},"\n\n",{"text":"左键点击来将命令填入聊天栏","color":"green"},"\n",{"text":"请将 ? 替换为连锁命令数","color":"green"}]}},"\n",{"text":"然后点击这里启动全球商店","color":"yellow","clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_boot"}}]

# 成功
scoreboard players set g_enable glbs_common 1
execute as @a run tellraw @s [{"text":"全球商店启动完成, 欢迎使用^_^","color":"green"}]
execute as @a at @s run function global_shop:sound/success