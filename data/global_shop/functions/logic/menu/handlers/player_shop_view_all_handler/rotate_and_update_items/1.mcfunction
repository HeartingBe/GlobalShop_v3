function global_shop:ui/display_manager/range_update_and_delete

# 计算 begin
scoreboard players operation begin glbs_common = orderDiff glbs_common
execute if score orderDiff glbs_common matches 28.. run scoreboard players set begin glbs_common 27
# log
#tellraw @a ["begin:",{"score":{"objective":"glbs_common","name":"begin"}}]

scoreboard players operation end glbs_common = begin glbs_common
scoreboard players set begin glbs_common 0
execute rotated as @s run function global_shop:ui/display_manager/range_summon
function global_shop:ui/display_manager/on_item_summon