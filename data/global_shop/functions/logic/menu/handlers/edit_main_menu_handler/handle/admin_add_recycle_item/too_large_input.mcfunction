tellraw @s ["\u00a7c向回收商店添加失败, 输入的数太大, 你的输入为：",{"score":{"objective":"glbs_inputter_1","name":"@s"},"color":"yellow"},"\u00a7c, 允许输入的最大数为: ",{"score":{"objective":"glbs_common","name":"MAX_PLAYER_INPUT"},"color":"white"}]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1