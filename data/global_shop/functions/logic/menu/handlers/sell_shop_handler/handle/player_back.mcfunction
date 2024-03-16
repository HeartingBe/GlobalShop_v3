# @executor Menu

# 切换到主菜单，刚好在中间
scoreboard players set g_columnIncrement glbs_common 0
function global_shop:logic/menu/handlers/menu_handler/change_mode/main
# 音效 更换菜单
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu