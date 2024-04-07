# @param playerMoney 玩家金钱 
# @executor Player

# 通知
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.cash.exchange.too_much_money.1","color":"red"}," ",{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.cash.exchange.too_much_money.2","color":"red"}," ",{"score":{"objective":"glbs_common","name":"INT32_MAX_HALF"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.cash.exchange.too_much_money.3","color":"red"}]

# 音效
function global_shop:sound/fail