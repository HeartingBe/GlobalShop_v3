# @brief 玩家请求打开商店，成功时执行
# @executor Player

# 增加连接数
scoreboard players add g_connectNum glbs_common 1

# 生成 Menu、Interactor、Player、TextDisplay
execute positioned ~ ~0.5 ~ run function global_shop:logic/menu/menu/open_menu_success/summon_unit

# 切换到主菜单
scoreboard players set g_columnIncrement glbs_common 0
execute on vehicle at @s run function global_shop:logic/menu/handlers/menu_handler/change_mode/main

# 主进度
advancement grant @s only global_shop:root

# tag 彩蛋
# 10% 的概率将周围 5 格内的箱子矿车的随机其中一个改为 GlobalShop_v2 的矿车外观
execute if score g_isEasterEgg glbs_common matches 1 if predicate global_shop:probability/10 run function global_shop:logic/menu/menu/open_menu_success/trigger_easter_egg

function global_shop:sound/open_shop