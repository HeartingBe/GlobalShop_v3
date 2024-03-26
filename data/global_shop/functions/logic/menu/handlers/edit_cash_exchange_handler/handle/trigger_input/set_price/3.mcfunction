#设置价格
execute on vehicle on passengers if entity @s[scores={glbs_order=16},type=minecraft:item_display,tag=!glbs_killed] store result entity @s item.tag.global_shop.price int 1 store result storage global_shop:storage g_cashInfo[3].item.tag.global_shop.price int 1 run scoreboard players get temp_cash_price glbs_common

# 如果物品高亮，重置状态重新展示文本
execute on vehicle on passengers if entity @s[scores={glbs_order=16},type=minecraft:item_display,tag=glbs_item_highlight,tag=!glbs_killed] run function global_shop:logic/item_display_entity/redisplay_text

function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/success_tellraw