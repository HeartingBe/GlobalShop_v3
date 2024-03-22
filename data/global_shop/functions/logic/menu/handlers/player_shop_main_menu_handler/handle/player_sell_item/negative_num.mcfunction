tellraw @s ["\u00a7c出售失败, 价格必须是正数, 你的输入为：",{"score":{"objective":"glbs_inputter_1","name":"@s"},"color":"yellow"},"\u00a7c 请重新输入"]

function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1