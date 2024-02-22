#> global_shop:storage/store_manager/locate_index_in_recycle_shop_list_by_id
#
# 根据 id 在 g_recycleShopList 中定位该物品的下标
# @param id 要查找的物品
# @return 该物品的下标，返回 -1 代表物品不存在
# @executor -

# left、right
scoreboard players set left glbs_common 0
execute store result score right glbs_common run data get storage global_shop:storage g_recycleShopList
scoreboard players remove right glbs_common 1

scoreboard players set isReturn glbs_common 0
data remove storage global_shop:common temp
# while
execute if score left glbs_common <= right glbs_common run function global_shop:storage/store_manager/locate_index_in_recycle_shop_list_by_id/while

execute if score isReturn glbs_common matches 1 run return run scoreboard players get mid glbs_common

return -1