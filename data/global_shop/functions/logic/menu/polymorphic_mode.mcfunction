# @brief 根据不同模式调不同 handler 处理逻辑
# @executor Menu

execute if score @s glbs_mode matches 0..6 run return run function global_shop:logic/menu/polymorphic_mode/0_to_6

execute if score @s glbs_mode matches 7..12 run return run function global_shop:logic/menu/polymorphic_mode/7_to_12

execute if score @s glbs_mode matches 13..14 run return run function global_shop:logic/menu/polymorphic_mode/13_to_14