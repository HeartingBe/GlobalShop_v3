# @param temp1 玩家拥有的金钱
# @param temp2 物品售价
# @executor Player

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_shop.buy.money_not_enough.1\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp2"},"color":"yellow"},"   ",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_shop.buy.money_not_enough.2\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"temp1"},"color":"yellow"}]