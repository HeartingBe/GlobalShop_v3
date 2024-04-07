# @macro {id:"?",lvl:?s} 即待解析的附魔列表第一项

$execute store success score temp1 glbs_common run data modify storage global_shop:common temp.translate_key set from storage global_shop:storage enchantment."$(id)"

# TODO 可能出现的错误
# id 为 "1\".\"2" 时，成功

# 宏参数没有错误，函数成功执行
scoreboard players set noError glbs_common 1