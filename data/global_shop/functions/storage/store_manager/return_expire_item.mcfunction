# @brief 退还过期物品，每次调用进行一次处理，每次最多处理一半的玩家数 * 一页的数量
# ITEM_NUM_PER_PAGE glbs_common 27

# 没有物品
execute unless data storage global_shop:storage g_playerShopList[0] run return 0
# 没过期物品
   execute store result score temp glbs_common run data get storage global_shop:storage g_playerShopList[0].tag.global_shop.expireTime
   execute if score temp glbs_common > g_time glbs_common run return 0

# 计算最大处理物品数量
scoreboard players operation temp glbs_common = g_connectNum glbs_common
scoreboard players operation temp glbs_common /= 2 glbs_common
scoreboard players operation temp glbs_common *= 27 glbs_common

# 获取过期物品的数量
execute store result score temp2 glbs_common run function global_shop:storage/store_manager/return_expire_item/get_expire_num

