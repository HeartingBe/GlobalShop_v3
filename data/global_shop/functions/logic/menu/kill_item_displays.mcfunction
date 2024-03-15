# @brief 清除周围的物品展示实体
# @executor Menu
execute on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] run function global_shop:logic/item_display_entity/kill