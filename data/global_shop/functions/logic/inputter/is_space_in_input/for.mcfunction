# 取第一个字符
data modify storage global_shop:common char set string storage global_shop:common tempStr 0 1

execute store success score setResult glbs_common run data modify storage global_shop:common char set from storage global_shop:storage char.SPACE
# setResult 如果为 0 说明合并失败，即 global_shop:common char 是空格，停止，并将结果标记为 1
execute if score setResult glbs_common matches 0 run return run scoreboard players set hasSpace glbs_common 1

data modify storage global_shop:common tempStr set string storage global_shop:common tempStr 1
scoreboard players add i glbs_common 1
execute if score i glbs_common < len glbs_common run function global_shop:logic/inputter/is_space_in_input/for