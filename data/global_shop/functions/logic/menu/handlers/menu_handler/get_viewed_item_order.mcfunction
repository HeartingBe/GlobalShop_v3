# @brief 获取玩家看向的物品展示实体的编号
# @executor Menu
# @return 玩家看向的物品展示实体的编号(0~26，返回 -1 代表没有看向任何实体)

# 获取水平角度差
execute store result score temp1 glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff

# 获取玩家垂直角度
execute on passengers if entity @s[type=minecraft:player] store result score temp2 glbs_common run data get entity @s Rotation[1]

# 看向物品
execute if score temp1 glbs_common matches -54..53 if score temp2 glbs_common matches -18..18 run return run function global_shop:logic/menu/handlers/menu_handler/get_viewed_item_order/1

# 没有看向物品
return -1