# @brief 启动全球商店运行，由服务器管理员调用
# @executor op

execute if score g_enable glbs_common matches 1 run return run function global_shop:settings_/try_boot/already

# 给该 op 权限
execute unless score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.set_admin\"","color":"green"}]
scoreboard players operation @s glbs_permission = Permission::ADMIN glbs_common

scoreboard players reset * open_global_shop

# 不完整执行，阻止 load
execute if score g_tickTag glbs_common matches 1 run return run execute as @a if score @s glbs_permission = Permission::ADMIN glbs_common at @s run function global_shop:load/no_fully_execute

# 连锁命令数不足
execute store result score temp glbs_common run gamerule maxCommandChainLength
execute if score temp glbs_common matches ..65535 run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.chain_command_num_too_low.1\"","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.chain_command_num_too_low.2\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.chain_command_num_too_low.3\"","color":"red"},"\n",{"text":"1. ","color":"yellow"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.chain_command_num_too_low.4\"","color":"yellow","clickEvent":{"action":"suggest_command","value":"/gamerule maxCommandChainLength ?"},"underlined":true,"hoverEvent":{"action":"show_text","contents":[{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.chain_command_num_too_low.5\"","color":"green"},"\n",{"text":" /gamerule maxCommandChainLength ?","color":"gray"},"\n\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.chain_command_num_too_low.6\"","color":"green"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.chain_command_num_too_low.7\"","color":"green"}]},"bold":true},"\n",{"text":"2. ","color":"yellow"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.chain_command_num_too_low.8\"","color":"yellow","clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_boot"},"underlined":true}]
execute if score temp glbs_common matches ..65535 run return run function global_shop:sound/fail

# 成功
scoreboard players set g_enable glbs_common 1
execute as @a run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"boot.success\"","color":"green"},{"text":"^_^","color":"green"}]
execute as @a at @s run function global_shop:sound/success