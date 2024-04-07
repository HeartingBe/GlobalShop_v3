# @brief 扣除玩家金钱
# @macro {scoreboard: string}
# @param reduce 要扣除的数额
# @executor Player

$return run scoreboard players operation @s $(scoreboard) -= reduce glbs_common