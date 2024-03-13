# @brief 增加玩家金钱，适配服务器自定义记分板
# @param addAmount 要增加的数额
# @executor Player
# @return 增加后的数额

data remove storage global_shop:common temp
data modify storage global_shop:common temp.scoreboard set from storage global_shop:storage g_scoreboard
return run function global_shop:adapters/money_scoreboard_adapter/add_money/macro_add_money with storage global_shop:common temp