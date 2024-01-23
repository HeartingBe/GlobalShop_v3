execute store result score temp1 glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_viewed_item_order/2

execute if score temp2 glbs_common matches -18..-7 run return run scoreboard players remove temp1 glbs_common 1

execute if score temp2 glbs_common matches 7..18 run return run scoreboard players add temp1 glbs_common 1

return run scoreboard players get temp1 glbs_common