# 从主菜单进入玩家设置
function global_shop:logic/menu/handlers/menu_handler/change_mode/player_setting
# 音效 更换菜单
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu