# @brief 启动全球商店运行，由管理员调用

scoreboard players reset * open_global_shop

# 版本不对应
# tag 版本号修改点
execute unless score g_version glbs_common matches 0 run return run tellraw @s ["\u00a7c全球商店启动失败, 原因是服务器运行过更高版本的全球商店(版本号 ",{"score":{"objective":"glbs_common","name":"g_version"}},"\u00a7c), 当前安装的版本号为 \u00a7f0\u00a7c, 请更换对应版本的全球商店数据包"]

# 成功
scoreboard players set g_enable glbs_common 1
function global_shop:logic/scheduler/timing
execute as @a if score @s glbs_permission = Permission::ADMIN glbs_common run tellraw @s ["\u00a7a全球商店已开始运行"]