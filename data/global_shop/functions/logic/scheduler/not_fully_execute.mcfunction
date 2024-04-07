# @brief 数据包必须完整执行完一轮，否则出现未定义错误，在此处停止并警告

function global_shop:logic/shop/stop

execute as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"error.incomplete_execution.1\"","color":"red"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"error.incomplete_execution.2\"","color":"red"}]

# 提供完整性检查函数, 并给出修复建议
#- 无法提供，一旦出现执行不完一轮命令的情况，十有八九数据已经完蛋