# @brief 开关彩蛋
# @executor Admin

# 需要二次点击，先获取是第几次点击
execute on vehicle run scoreboard players operation temp2 glbs_common = @s glbs_last_target

# 第一次点击，发送状态，并记录点击
execute unless score temp2 glbs_common = SETTING_EASTER_EGG glbs_common if score g_isEasterEgg glbs_common matches 0 run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.easter_egg.1\"","color":"aqua"},"\u00a7b: \u00a7cOFF\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.easter_egg.2\"","color":"green"}]
execute unless score temp2 glbs_common = SETTING_EASTER_EGG glbs_common if score g_isEasterEgg glbs_common matches 1 run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.easter_egg.1\"","color":"aqua"},"\u00a7b: \u00a7aON\n",{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.easter_egg.3\"","color":"green"}]
execute unless score temp2 glbs_common = SETTING_EASTER_EGG glbs_common run function global_shop:sound/success
execute unless score temp2 glbs_common = SETTING_EASTER_EGG glbs_common run return run execute on vehicle run scoreboard players operation @s glbs_last_target = SETTING_EASTER_EGG glbs_common

# 第二次点击，切换状态
execute store success score g_isEasterEgg glbs_common if score g_isEasterEgg glbs_common matches 0

execute if score g_isEasterEgg glbs_common matches 1 run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.easter_egg.4\"","color":"green"}]
execute if score g_isEasterEgg glbs_common matches 1 run return run function global_shop:sound/success

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"admin_settings.easter_egg.5\"","color":"red"}]
function global_shop:sound/fail