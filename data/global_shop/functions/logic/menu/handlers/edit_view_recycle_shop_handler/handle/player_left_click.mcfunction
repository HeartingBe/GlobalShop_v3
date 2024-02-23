#> global_shop:logic/menu/handlers/edit_view_recycle_shop_handler/handle/player_left_click
#
# 处理编辑菜单的左键操作
# @executor Menu

# 获取玩家看向的控件序号（就是 @s glbs_last_view_order）
scoreboard players operation temp glbs_common = @s glbs_last_view_order

# 物品变红色提示玩家即将删除该物品
execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] if score @s glbs_order = temp glbs_common run function global_shop:logic/item_display_entity/set_state_will_delete

# 删除物品的确认提示
execute on passengers if entity @s[type=minecraft:player] run tellraw @s {"text": "再次点击确认删除"}