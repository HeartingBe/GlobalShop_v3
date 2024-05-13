# @executor Player

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop.jump_order.already\"","color":"green"}]

function global_shop:sound/success

# 如果玩家没有看中间的物品，则高亮中间的物品
execute on vehicle unless score @s glbs_last_view_order matches 13 on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] if score @s glbs_order matches 13 run function global_shop:logic/item_display_entity/set_state_highlight

# 重置输入器状态
scoreboard players set @s glbs_inputter_1 0
scoreboard players set @s glbs_inputter_2 0
scoreboard players enable @s glbs_inputter_1
scoreboard players enable @s glbs_inputter_2