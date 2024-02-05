# 获取玩家金钱
# @executor Menu
# @return 该玩家的金钱

# 调用者需要保证其目前不依赖 temp glbs_common 记分板

# 函数 global_shop:adapters/money_scoreboard_adapters/get_money 会将获取的金钱写入 temp glbs_common（不使用返回值，而直接使用出参，就可以初始化为 0，来避免 g_scoreboard 出现被管理员改为空等问题时，命令执行失败导致 temp 是脏数据）
scoreboard players set temp glbs_common 0
execute on passengers if entity @s[type=minecraft:player] run function global_shop:adapters/money_scoreboard_adapters/get_money
return run scoreboard players get temp glbs_common