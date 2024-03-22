# @executor Admin

execute unless data storage global_shop:common admin_input run return run function global_shop:settings_/try_modify_money_scoreboard/no_input

# 检查记分板是否存在
    # 1. 设置 temp glbs_common 为 0
    # 2. 设置 #temp $(admin_input) 为 1
    # 3. 令 temp glbs_common = #temp $(admin_input)（还应重置 #temp $(admin_input)）
    # 4. 检查 temp glbs_common，如果为 0 说明记分板不存在
scoreboard players set temp glbs_common 0
data remove storage global_shop:common temp
data modify storage global_shop:common temp.scoreboard set from storage global_shop:common admin_input
data remove storage global_shop:common admin_input
function global_shop:settings_/try_modify_money_scoreboard/macro_set_score with storage global_shop:common temp
function global_shop:settings_/try_modify_money_scoreboard/macro_get_score with storage global_shop:common temp

# 记分板不存在
execute if score temp glbs_common matches 0 run return run function global_shop:settings_/try_modify_money_scoreboard/invalid_scoreboard

# 设置成功
tellraw @s ["\u00a7a成功将全球商店使用的金钱记分板从 ",{"type":"nbt","storage":"global_shop:storage","nbt":"g_scoreboard","color":"yellow"},"\u00a7a 设置为 ",{"type":"nbt","storage":"global_shop:common","nbt":"temp.scoreboard","color":"yellow"}]
data modify storage global_shop:storage g_scoreboard set from storage global_shop:common temp.scoreboard
function global_shop:sound/success