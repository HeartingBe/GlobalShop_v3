# @brief 玩家请求打开商店，成功时执行
# @executor Player

# 增加连接数
scoreboard players add g_connectNum glbs_common 1

# 生成 Menu、Interactor、Player、TextDisplay
execute positioned ~ ~0.5 ~ run function global_shop:logic/menu/menu/open_menu_success/summon_unit

# 切换到主菜单
tellraw @s ["\u00a7a欢迎使用商店"]
scoreboard players set g_columnIncrement glbs_common 0
execute on vehicle at @s run function global_shop:logic/menu/handlers/menu_handler/change_mode/main
# 音效 打开商店
function global_shop:sound/open_shop