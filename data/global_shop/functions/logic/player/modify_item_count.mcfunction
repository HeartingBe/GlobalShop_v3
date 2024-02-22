# @param slot 要设置数量的栏位，范围 0~35
# @param newCount 要设置的数量
# @executor Player

# 下面一排
execute if score slot glbs_common matches 0..8 run return run function global_shop:logic/player/modify_item_count/0_to_8
# 背包三排
execute if score slot glbs_common matches 9..17 run return run function global_shop:logic/player/modify_item_count/9_to_17
execute if score slot glbs_common matches 18..26 run return run function global_shop:logic/player/modify_item_count/18_to_26
execute if score slot glbs_common matches 27..35 run function global_shop:logic/player/modify_item_count/27_to_35