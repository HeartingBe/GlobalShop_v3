tellraw @s [{"text":"向出售商店添加物品失败, 价格必须是正数, 你的输入为: ","color":"red"},{"score":{"objective":"glbs_inputter_1","name":"@s"},"color":"yellow"},{"text":" 请重新输入","color":"green"}]

scoreboard players set @s glbs_inputter_1 0
scoreboard players enable @s glbs_inputter_1

function global_shop:sound/fail