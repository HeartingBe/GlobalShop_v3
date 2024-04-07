# @brief 检查 global_shop:common admin_input 中是否有空格
# @return 1 - 有；0 - 没有

execute store result score len glbs_common run data get storage global_shop:common admin_input

# 长度为 0，认为没有空格
execute if score len glbs_common matches 0 run return 0

# 下面开始检查，存到 tempStr 上操作
data modify storage global_shop:common tempStr set from storage global_shop:common admin_input

scoreboard players set hasSpace glbs_common 0

scoreboard players set i glbs_common 0
function global_shop:logic/inputter/is_space_in_input/for

return run scoreboard players get hasSpace glbs_common