# @brief 关闭该连接，清除实体和数据
# @executor Menu
# @other 必须选中 Menu 并 at @s 后才能执行该函数

# 清除物品展示实体
execute as @e[type=minecraft:item_display,tag=global_shop,distance=..5] run function global_shop:logic/item_display_entity/kill

# 清除 Interactor、TextDisplay
function global_shop:logic/menu/kill/kill_passengers

# 清除交互实体
execute on passengers if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/kill

# 需要对玩家进行的操作（玩家可能不存在，例如玩家脱离，但不影响）
execute on passengers if entity @s[type=minecraft:player] run function global_shop:logic/menu/kill/player

# 清除数据
scoreboard players reset @s glbs_mode
scoreboard players reset @s glbs_last_action
scoreboard players reset @s glbs_last_view_order
scoreboard players reset @s glbs_last_view_id
scoreboard players reset @s glbs_last_target
scoreboard players reset @s glbs_begin_index
#TODO

# 清除自身
kill @s