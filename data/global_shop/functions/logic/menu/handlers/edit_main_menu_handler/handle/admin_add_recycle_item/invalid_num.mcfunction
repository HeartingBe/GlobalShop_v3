tellraw @s ["出售失败, 价格必须是正数, 你的输入为：",{"score":{"objective":"glbs_set_recycle_shop_item_price","name":"@s"}}," 请重新输入"]

scoreboard players set @s glbs_set_recycle_shop_item_price 0
scoreboard players enable @s glbs_set_recycle_shop_item_price