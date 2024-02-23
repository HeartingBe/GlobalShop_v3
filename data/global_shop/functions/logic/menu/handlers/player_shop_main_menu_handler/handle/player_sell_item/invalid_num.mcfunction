tellraw @s ["出售失败, 价格必须是正数, 你的输入为：",{"score":{"objective":"glbs_inputter_1","name":"@s"}}," 请重新输入"]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1