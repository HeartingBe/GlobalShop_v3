# @executor Player

# 通知
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"sell_shop.buy.money_not_enough.1\"","color":"red"},{"score":{"objective":"glbs_common","name":"temp2"},"color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"sell_shop.buy.money_not_enough.2\"","color":"red"},{"score":{"objective":"glbs_common","name":"temp1"},"color":"yellow"}]

function global_shop:sound/fail