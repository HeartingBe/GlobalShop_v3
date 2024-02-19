# @brief 提取 g_playerNameJson 的 text
# @macro {input: RawJson}
# @$param input 就是 g_playerNameJson
# @param g_playerNameJson 出参

$data modify storage global_shop:common temp set value $(input)
data remove storage global_shop:common g_playerNameJson
data modify storage global_shop:common g_playerNameJson.name set from storage global_shop:common temp.text