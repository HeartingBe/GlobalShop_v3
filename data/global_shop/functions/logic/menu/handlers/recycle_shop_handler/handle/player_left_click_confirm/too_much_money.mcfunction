# @param playerMoney 玩家金钱 
# @executor Menu

# 通知
execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.recycle_shop.recycle.too_much_money.1\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.recycle_shop.recycle.too_much_money.2\"","color":"red"}," ",{"score":{"objective":"glbs_common","name":"INT32_MAX_HALF"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.recycle_shop.recycle.too_much_money.3\"","color":"red"}]

function global_shop:sound/fail