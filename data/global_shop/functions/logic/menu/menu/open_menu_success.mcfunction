# @brief 玩家请求打开商店，成功时执行
# @executor Player

tellraw @s ["\u00a7a欢迎使用商店"]

# 清除五个格子范围内的残留物品展示实体
execute as @e[type=minecraft:item_display,tag=global_shop,distance=..5] run function global_shop:logic/item_display_entity/kill

# 生成 Menu、Interactor、Player
execute positioned ~ ~0.5 ~ run function global_shop:logic/menu/menu/open_menu_success/summon_unit

# 生成主菜单
execute on vehicle at @s run function global_shop:logic/menu/menu/open_menu_success_display_main_menu