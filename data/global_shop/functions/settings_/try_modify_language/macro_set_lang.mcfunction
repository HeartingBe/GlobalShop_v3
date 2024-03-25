# @macro global_shop:common temp {input: String} 玩家输入
# @executor Admin

$execute store result score temp glbs_common run function global_shop:text/$(input)/init

# 设置失败
execute unless score temp glbs_common matches 1 run tellraw @s ["\u00a7c无法将语言从 ",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.lang","color":"yellow"}," \u00a7c设置为 ",{"type":"nbt","storage":"global_shop:common","nbt":"temp.input","color":"yellow"}," \u00a7c可能是语言文件函数不存在或格式有误"]
execute unless score temp glbs_common matches 1 run return run function global_shop:sound/fail

# 设置成功
tellraw @s ["\u00a7a成功将全球商店的语言从 ",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.lang","color":"yellow"}," \u00a7a设置为 ",{"type":"nbt","storage":"global_shop:common","nbt":"temp.input","color":"yellow"}]
data modify storage global_shop:storage g_lang.lang set from storage global_shop:common temp.input
function global_shop:sound/success