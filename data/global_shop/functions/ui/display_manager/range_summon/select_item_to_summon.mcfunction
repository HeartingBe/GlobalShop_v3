# @param selectScore 根据分数选择生成物品展示实体，范围 [0, 26]

execute if score selectScore glbs_common matches 0..13 run return run function global_shop:ui/display_manager/range_summon/select_item_to_summon/0_to_13
function global_shop:ui/display_manager/range_summon/select_item_to_summon/14_to_26