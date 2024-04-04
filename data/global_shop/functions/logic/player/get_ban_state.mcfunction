# @macro {uid: int}
# @param banState 出参，进入时为 0，如果玩家是被禁用的状态，设置为 1

$execute if score $(uid) glbs_ban matches 1 run scoreboard players set banState glbs_common 1