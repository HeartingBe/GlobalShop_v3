# @macro global_shop:common temp {input: String} 玩家输入
# @executor Admin

$execute store result score temp glbs_common run function global_shop:text/$(input)/init

# 设置失败
#execute unless score temp glbs_common matches 1 run tellraw @s [{"text":"无法将商店的语言从 ","color":"red"},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.lang","color":"yellow"},{"text":" 设置为 ","color":"red"},{"type":"nbt","storage":"global_shop:common","nbt":"temp.input","color":"yellow"},"\n",{"text":"可能是语言文件函数不存在或格式有误","color":"red"}]
execute unless score temp glbs_common matches 1 run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.admin_settings.lang.fail.1","color":"red"}," ",{"type":"nbt","storage":"global_shop:common","nbt":"temp.input","color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.admin_settings.lang.fail.2","color":"red"}]
execute unless score temp glbs_common matches 1 run return run function global_shop:sound/fail

# 设置成功
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.admin_settings.lang.set_success.1","color":"green"}," ",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.lang","color":"yellow"},"\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.admin_settings.lang.set_success.2","color":"green"}," ",{"type":"nbt","storage":"global_shop:common","nbt":"temp.input","color":"yellow"}]
data modify storage global_shop:storage g_lang.lang set from storage global_shop:common temp.input
function global_shop:sound/success