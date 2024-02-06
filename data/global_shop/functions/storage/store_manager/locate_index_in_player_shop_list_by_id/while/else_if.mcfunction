scoreboard players operation right glbs_common = mid glbs_common
scoreboard players remove right glbs_common 1

execute if score left glbs_common <= right glbs_common run function global_shop:storage/store_manager/locate_index_in_player_shop_list_by_id/while