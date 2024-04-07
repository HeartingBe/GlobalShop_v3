# 提示
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"cash.force_back\"","color":"red"}]
# 音效 更换菜单
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu