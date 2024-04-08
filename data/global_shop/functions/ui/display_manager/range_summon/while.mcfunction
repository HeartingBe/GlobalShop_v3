scoreboard players operation selectScore glbs_common = begin glbs_common
function global_shop:ui/display_manager/range_summon/select_item_to_summon

scoreboard players add begin glbs_common 1
execute if score begin glbs_common < end glbs_common run function global_shop:ui/display_manager/range_summon/while