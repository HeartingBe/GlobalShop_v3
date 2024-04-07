# @brief 扣除玩家金钱，适配服务器自定义记分板
# @param reduce 要扣除的数额
# @executor Player
# @return 扣除后剩余的数额

data remove storage global_shop:common temp
data modify storage global_shop:common temp.scoreboard set from storage global_shop:storage g_scoreboard
return run function global_shop:adapters/money_scoreboard_adapter/reduce_money/macro_reduce_money with storage global_shop:common temp