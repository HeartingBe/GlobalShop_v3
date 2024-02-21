tellraw @s ["出售失败, 价格必须是正数, 你的输入为：",{"score":{"objective":"glbs_sell_item_price","name":"@s"}}]

scoreboard players set @s glbs_sell_item_price 0