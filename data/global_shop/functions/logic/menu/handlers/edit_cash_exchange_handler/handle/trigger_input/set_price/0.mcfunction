#设置价格
execute on vehicle on passengers if entity @s[scores={glbs_order=7},type=minecraft:item_display,tag=!glbs_killed] store result entity @s item.tag.global_shop.price int 1 store result storage global_shop:storage g_cashInfo[0].item.tag.global_shop.price int 1 run scoreboard players get temp_cash_price glbs_common

# 如果玩家目前正在看向此货币对应的物品展示实体，则刷新展示文本
execute if score targetOrder glbs_common matches 7 on vehicle on passengers if entity @s[scores={glbs_order=7},type=minecraft:item_display,tag=!glbs_killed,tag=glbs_item_highlight] run function global_shop:logic/item_display_entity/flush_display_text

function global_shop:logic/menu/handlers/edit_cash_exchange_handler/handle/trigger_input/set_price/success_tellraw