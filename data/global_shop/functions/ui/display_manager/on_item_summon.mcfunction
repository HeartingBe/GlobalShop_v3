# @brief 有物品生成时，调用该函数，统一在之后将物品变大，并去除 glbs_to_set_state_normal 标签。允许多次调用，但只会统一更新一次
# @executor -

# 如需修改延迟，直接修改以下命令的延迟时间
schedule function global_shop:ui/display_manager/on_item_summon/timer 3t replace