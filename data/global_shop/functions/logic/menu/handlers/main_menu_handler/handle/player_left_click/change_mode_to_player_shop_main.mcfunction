# 从主菜单进入玩家商店主界面，无需校准列
scoreboard players set g_columnIncrement glbs_common 0
function global_shop:logic/menu/handlers/menu_handler/change_mode/player_shop_main
# 音效 更换菜单
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/change_menu