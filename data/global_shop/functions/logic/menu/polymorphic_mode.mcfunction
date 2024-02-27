# @brief 根据不同模式调不同 handler 处理逻辑
# @executor Menu

execute if score @s glbs_mode matches 0..5 run return run function global_shop:logic/menu/polymorphic_mode/0_to_5

execute if score @s glbs_mode matches 6..12 run return run function global_shop:logic/menu/polymorphic_mode/6_to_12