# @brief 获取 g_playerSellingListMap.<uid>[{id:<id>}]
# @param g_itemData 出参
# @executor Menu

# 构造参数 temp:{id:<id>,uid:<uid>}
   data remove storage global_shop:common temp
   # id
   execute store result storage global_shop:common temp.id int 1 run scoreboard players get @s glbs_last_action_target_id
   # uid
   execute on passengers if entity @s[type=minecraft:player] store result storage global_shop:common temp.uid int 1 run scoreboard players get @s glbs_uid
# 初始化出参
data remove storage global_shop:common g_itemData

function global_shop:storage/store_manager/get_player_selling_list_elem_by_id/macro_get_elem with storage global_shop:common temp