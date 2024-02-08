# @brief 获取玩家金钱，适配服务器自定义记分板
# @executor Player

data remove storage global_shop:common temp
data modify storage global_shop:common temp.scoreboard set from storage global_shop:storage g_scoreboard
function global_shop:adapters/money_scoreboard_adapter/get_money/macro_get_money with storage global_shop:common temp