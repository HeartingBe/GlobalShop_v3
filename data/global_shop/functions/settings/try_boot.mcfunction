# @brief 启动全球商店运行，由服务器管理员调用
# @executor op

# 给该 op 权限
execute unless score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.set_admin\"","color":"green"}]
scoreboard players operation @s glbs_permission = Permission::ADMIN glbs_common

scoreboard players reset * open_global_shop

# 版本不对应(版本太新。没有版本太旧，因为这是第一个版本)
# tag 版本号修改点
execute unless score g_version glbs_common matches 1 if score g_version glbs_common matches 2.. run return run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.wrong_version.newer.1\"","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.wrong_version.newer.2\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"g_version"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.wrong_version.newer.3\"","color":"red"}," ",{"text":"1","color":"white"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.wrong_version.newer.4\"","color":"red"}]

# 连锁命令数不足
execute store result score temp glbs_common run gamerule maxCommandChainLength
execute if score temp glbs_common matches ..65535 run return run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.chain_command_num_too_low.1\"","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.chain_command_num_too_low.2\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.chain_command_num_too_low.3\"","color":"red"},"\n",{"text":"1. ","color":"yellow"},{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.chain_command_num_too_low.4\"","color":"yellow","clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength ?"},"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.chain_command_num_too_low.5\"","color":"green"},"\n",{"text":" /gamerule maxCommandChainLength ?","color":"gray"},"\n\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.chain_command_num_too_low.6\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.chain_command_num_too_low.7\"","color":"green"}]},"bold":true},"\n",{"text":"2. ","color":"yellow"},{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.chain_command_num_too_low.8\"","color":"yellow","clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_boot"},"underlined":true}]

# 成功
scoreboard players set g_enable glbs_common 1
execute as @a run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.boot.success\"","color":"green"},{"text":"^_^","color":"green"}]
execute as @a at @s run function global_shop:sound/success