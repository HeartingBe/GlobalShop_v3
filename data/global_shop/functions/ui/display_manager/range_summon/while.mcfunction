data remove storage global_shop:common temp
execute store result storage global_shop:common temp.index int 1 run scoreboard players get begin glbs_common

function global_shop:ui/display_manager/range_summon/macro_call_summon_single_item with storage global_shop:common temp

scoreboard players add begin glbs_common 1
execute if score begin glbs_common < end glbs_common run function global_shop:ui/display_manager/range_summon/while