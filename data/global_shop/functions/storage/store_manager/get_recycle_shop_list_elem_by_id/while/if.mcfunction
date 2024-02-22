scoreboard players operation left glbs_common = mid glbs_common
scoreboard players add left glbs_common 1

execute if score left glbs_common <= right glbs_common run function global_shop:storage/store_manager/get_recycle_shop_list_elem_by_id/while