scoreboard players operation @s glbs_order += orderDiff glbs_common

execute unless score @s glbs_order matches 0..26 run return run function global_shop:logic/item_display_entity/kill

# 没有被看，去掉高亮
execute unless score @s glbs_order = temp glbs_common if entity @s[tag=glbs_item_highlight] run function global_shop:logic/item_display_entity/set_state_normal

data remove storage global_shop:common temp
execute store result storage global_shop:common temp.index int 1 run scoreboard players get @s glbs_order
function global_shop:ui/display_manager/range_update_and_delete/macro_if with storage global_shop:common temp