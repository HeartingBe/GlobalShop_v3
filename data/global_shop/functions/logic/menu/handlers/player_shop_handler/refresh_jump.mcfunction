# @brief 保持 beginIndex_ 不变，旋转角不变，刷新当前展示的物品
# @executor Menu

# @other 此函数是 global_shop:logic/menu/handlers/player_shop_handler/refresh 的特化，让跳转的物品（菜单最中间的物品）高亮一下

scoreboard players set @s glbs_last_view_order -1
scoreboard players operation @s glbs_last_action = Action::NO_ACTION_THIS_PLAYER glbs_common

# 重置 last_glbs_last_view_id
scoreboard players set @s glbs_last_view_id 0

# 取玩家商店物品数据
function global_shop:storage/store_manager/get_player_shop_list_page

# 更新物品展示实体
function global_shop:ui/display_manager/update_whole_page

# 高亮中间的物品
execute on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] if score @s glbs_order matches 13 run function global_shop:logic/item_display_entity/set_state_highlight