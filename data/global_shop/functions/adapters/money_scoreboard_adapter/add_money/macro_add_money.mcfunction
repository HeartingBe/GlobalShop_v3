# @brief 增加玩家金钱
# @macro {scoreboard: string}
# @param addAmount 要增加的数额
# @executor Player
# @return 增加后的数额

$return run scoreboard players operation @s $(scoreboard) += addAmount glbs_common