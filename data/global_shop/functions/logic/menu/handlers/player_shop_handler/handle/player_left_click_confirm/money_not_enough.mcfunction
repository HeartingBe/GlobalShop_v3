# @param temp1 玩家拥有的金钱
# @param temp2 物品售价
# @executor Player

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"text":"你的钱不够, 无法购买。需要 ","color":"red"},{"score":{"objective":"glbs_common","name":"temp2"},"color":"yellow"},{"text":"   你只有 ","color":"red"},{"score":{"objective":"glbs_common","name":"temp1"},"color":"yellow"}]