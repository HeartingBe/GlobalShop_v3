# @brief 有物品生成时，调用该函数，统一在 2t 后将物品变大，并去除 glbs_to_set_state_normal 标签。允许多次调用，但只会统一更新一次
# @executor -

schedule function global_shop:ui/display_manager/on_item_summon/timer 2t replace