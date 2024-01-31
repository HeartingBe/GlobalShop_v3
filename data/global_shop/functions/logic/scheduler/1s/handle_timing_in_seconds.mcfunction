# @executor Player

# 减少玩家上架物品冷却
execute if score @s glbs_sell_item_cooling_time matches 1.. run scoreboard players remove @s glbs_sell_item_cooling_time 1