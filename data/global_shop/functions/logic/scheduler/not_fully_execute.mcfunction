# @brief 数据包必须完整执行完一轮，否则出现未定义错误，在此处停止并警告

# 标记停止运行
scoreboard players set g_enable glbs_common 0

execute as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s ["\u00a7c全球商店数据包出现错误, 未能完整执行一轮处理中所有的指令, 数据可能已经出现损坏, 全球商店暂时停止运行。\n要尝试解决此问题, 请 TODO"]

# TODO 提供完整性检查函数, 并给出修复建议