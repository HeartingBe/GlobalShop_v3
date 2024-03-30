# @executor Player

# log
#say 打开商店

# 数据包被卸载时（抹除所有数据）是不会调用 Scheduler#1t 的，所以以下触发方式刚好适配，不会出现数据全部抹除，玩家还能通过合成木棍来执行打开商店的函数的情况
scoreboard players reset @s open_global_shop
scoreboard players set @s open_global_shop 1

# 不在此处剥夺进度，在 Scheduler#1s 函数中剥夺