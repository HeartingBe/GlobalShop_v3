# @macro {uid: int}
# @param g_playerName 出参

$data modify storage global_shop:common g_playerName set from storage global_shop:storage g_playerNameMap.$(uid)