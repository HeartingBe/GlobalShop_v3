# @brief 退还过期物品，每次调用进行一次处理，每次最多处理一半的玩家数 * 一页的数量
# ITEM_NUM_PER_PAGE glbs_common 27

# 没有物品
execute unless data storage global_shop:storage g_playerShopList[0] run return 0
# 没过期物品
   execute store result score temp glbs_common run data get storage global_shop:storage g_playerShopList[0].tag.global_shop.expireTime
   execute if score temp glbs_common > g_time glbs_common run return 0

# 计算最大处理物品数量，为 最大连接数 / 2 * 27，预估最多为 108 个
# 无需担心过期物品堆积，堆积就堆积，玩家的存储物品（上架的 + 退回的）是有最大限制的
# 物品过期本身只是为了及时退回没人买的物品，就算不处理也不影响运行
scoreboard players operation temp glbs_common = MAX_CONNECT_NUM glbs_common
scoreboard players operation temp glbs_common /= 2 glbs_common
scoreboard players operation temp glbs_common *= 27 glbs_common

# 获取过期物品的数量
execute store result score temp2 glbs_common run function global_shop:storage/store_manager/return_expire_item/get_expire_num
# log
#tellraw @a [{"score":{"objective":"glbs_common","name":"temp2"}}," ",{"score":{"objective":"glbs_common","name":"temp"}}]
# 取最小值（temp2 = min(temp2, temp);）
execute if score temp2 glbs_common > temp glbs_common run scoreboard players operation temp2 glbs_common = temp glbs_common
# 退还 temp2 个物品
scoreboard players set i glbs_common 0
execute if score i glbs_common < temp2 glbs_common run function global_shop:storage/store_manager/return_expire_item/loop_return