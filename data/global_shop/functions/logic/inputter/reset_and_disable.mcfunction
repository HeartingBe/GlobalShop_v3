# @brief 将玩家所有输入记分板置 0，夺去修改权限
# executor Player

# reset 才能夺去 enable（使用 set 会导致玩家仍然可以利用上一次被 enable 的权限）
scoreboard players reset @s glbs_inputter_1
# 保证有分数
scoreboard players set @s glbs_inputter_1 0

scoreboard players reset @s glbs_inputter_2
scoreboard players set @s glbs_inputter_2 0