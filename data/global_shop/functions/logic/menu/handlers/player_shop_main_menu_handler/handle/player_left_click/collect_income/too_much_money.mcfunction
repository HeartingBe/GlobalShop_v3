# @param playerMoney 玩家金钱 
# @executor Player

# 通知
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop_main.income.too_much_money.1\"","color":"red"},{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop_main.income.too_much_money.2\"","color":"red"},{"score":{"objective":"glbs_common","name":"INT32_MAX_HALF"},"color":"yellow"}]
# 音效
function global_shop:sound/fail