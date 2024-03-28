#> global_shop:logic/menu/handlers/edit_view_recycle_shop_handler/handle/player_left_click_confirm
#
# 双击确认删除物品
# @executor Menu

# 左键状态重置
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# 移除这个物品
# index glbs_common在此处使用
function global_shop:storage/store_manager/delete_recycle_shop_elem_by_index

# 刷新
function global_shop:logic/menu/handlers/edit_view_recycle_shop_handler/refresh

# 音效 成功
execute on passengers if entity @s[type=minecraft:player] run function global_shop:sound/success

# 通知玩家
execute on passengers if entity @s[type=minecraft:player] run tellraw @s [{"text":"成功删除该回收商店物品","color":"green"}]