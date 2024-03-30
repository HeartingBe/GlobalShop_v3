#> global_shop:logic/menu/handlers/player_use_money_item_exchange_handler/handle/player_left_click/exchange_n/not_enough_money
# @param playerMoney glbs_common 玩家金钱
# @param cashPrice glbs_common 货币面值
# @executor Player

# 通知
tellraw @s ["\u00a7c余额不足，无法取出。你的金钱有: ",{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"},"\u00a7c, 货币面值为: ",{"score":{"objective":"glbs_common","name":"cashPrice"},"color":"white"}]
# 音效
function global_shop:sound/fail