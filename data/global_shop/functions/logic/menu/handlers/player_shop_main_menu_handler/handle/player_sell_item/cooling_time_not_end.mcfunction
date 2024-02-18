# @executor Player

tellraw @s ["冷却时间未到, 还剩 ",{"score":{"objective":"glbs_sell_item_cooling_time","name":"@s"}}," s"]

scoreboard players set @s glbs_sell_item_price 0

# 冷却时间未到，阻止玩家上架物品，但重新 enable
scoreboard players enable @s glbs_sell_item_price