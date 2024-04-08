# @param selectScore，根据分数调用 global_shop:ui/display_manager/range_update_and_delete/2/$(selectScore，根据分数调用)，范围 [0, 26]
# @executor ItemDisplayEntity

execute if score selectScore glbs_common matches 0..13 run return run function global_shop:ui/display_manager/range_update_and_delete/select_item_to_update/0_to_13
function global_shop:ui/display_manager/range_update_and_delete/select_item_to_update/14_to_26