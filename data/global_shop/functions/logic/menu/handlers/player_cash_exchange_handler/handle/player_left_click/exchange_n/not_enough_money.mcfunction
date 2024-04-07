#> global_shop:logic/menu/handlers/player_cash_exchange_handler/handle/player_left_click/exchange_n/not_enough_money
# @param playerMoney glbs_common 玩家金钱
# @param cashPrice glbs_common 货币面值
# @executor Player

# 通知
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.cash.exchange.money_no_enough.1","color":"red"}," ",{"score":{"objective":"glbs_common","name":"cashPrice"},"color":"yellow"},"   ",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.cash.exchange.money_no_enough.2","color":"red"}," ",{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"}]

# 音效
function global_shop:sound/fail