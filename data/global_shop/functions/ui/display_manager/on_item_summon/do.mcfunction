tag @s remove glbs_to_set_state_normal

# 如果玩家转动角度过大，看向新生成的物品，物品会被添加高亮标签，但在此处延迟变大和高亮（因为用正常处理逻辑会导致下一轮处理才让物品高亮，后来改为本轮高亮，所以必须一开始就加标签标记处理）
execute if entity @s[tag=glbs_item_highlight] run return run function global_shop:logic/item_display_entity/set_state_highlight_delay

function global_shop:logic/item_display_entity/set_state_normal