# @brief 提取 g_itemIdTranslateJson 的 translate
# @macro {input: string}
# @$param input 就是 g_itemIdTranslateJson
# @param g_itemIdTranslateString 出参

$data modify storage global_shop:common temp set value $(input)
data modify storage global_shop:common g_itemIdTranslateString set from storage global_shop:common temp.translate