#> global_shop:logic/menu/handlers/edit_view_sell_shop_handler/handle/player_left_click
#
# 处理编辑菜单的左键操作
# @executor Menu

# 获取玩家看向的控件序号（就是 @s glbs_last_action_target_order）
scoreboard players operation temp glbs_common = @s glbs_last_action_target_order

execute as @e[distance=..5,type=item_display,tag=global_shop] if score @s glbs_order = temp glbs_common run team join glsp_will_delete @s

# 删除物品的确认提示
execute on passengers if entity @s[type=minecraft:player] run tellraw @s {"text": "再次点击确认删除"}