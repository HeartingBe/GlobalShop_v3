# 去掉高亮
execute if entity @s[tag=glbs_item_highlight] run function global_shop:logic/item_display_entity/set_state_normal

# 自身 id 与拿到的物品数据 id 不同，更新数据和显示
data remove storage global_shop:common temp
execute store result storage global_shop:common temp.index int 1 run scoreboard players get @s glbs_order
function global_shop:ui/display_manager/range_update_and_delete/macro_if with storage global_shop:common temp