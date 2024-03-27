tellraw @s ["\u00a7c向回收商店添加物品失败, 价格必须是正数, 你的输入为: ",{"score":{"objective":"glbs_inputter_1","name":"@s"},"color":"yellow"}," \u00a7c请重新输入"]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1

function global_shop:sound/fail