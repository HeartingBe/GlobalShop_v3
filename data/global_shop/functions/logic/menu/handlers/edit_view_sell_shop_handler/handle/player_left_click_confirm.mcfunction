#> global_shop:logic/menu/handlers/edit_view_sell_shop_handler/handle/player_left_click_confirm
#
# 双击确认删除物品
# @executor Menu

# 高亮取消
team empty glsp_will_delete

# 左键状态重置
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# 移除这个物品
scoreboard players operation id glbs_common = @s glbs_last_action_target_order
function global_shop:storage/store_manager/delete_sell_shop_elem_by_id

# 刷新
function global_shop:logic/menu/handlers/edit_view_sell_shop_handler/refresh

# 通知玩家
execute on passengers if entity @s[type=player] run tellraw @s ["删除成功"]