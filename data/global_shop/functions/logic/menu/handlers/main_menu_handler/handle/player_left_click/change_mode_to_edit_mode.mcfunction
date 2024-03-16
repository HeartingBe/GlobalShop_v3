# 从主菜单进入编辑页面，无需校准列
scoreboard players set g_columnIncrement glbs_common 0
function global_shop:logic/menu/handlers/menu_handler/change_mode/edit_main
# 音效 更换菜单
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu