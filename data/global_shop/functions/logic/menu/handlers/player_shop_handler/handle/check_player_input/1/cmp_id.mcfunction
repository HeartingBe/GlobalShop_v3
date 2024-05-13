# @brief 检查玩家输入序号跳转物品时，是不是已经在看这个物品（转化为获取的对应序号的物品的 id 与看向的物品的 id 对比）
# @param inputOrder 玩家输入的序号
# @executor Menu
# @return 0 - 不是，可以跳转；1 - 是

# 玩家要取出的序号从 1 开始，转成下标
scoreboard players operation index glbs_common = inputOrder glbs_common
scoreboard players remove index glbs_common 1

# 因为从最新的物品开始显示（玩家的视角也是如此）。inputOrder 先沿对称轴对称到其对称点上，然后向前移动逐个取出
execute store result score temp1 glbs_common run function global_shop:storage/store_manager/get_player_shop_list_size
scoreboard players remove temp1 glbs_common 1
scoreboard players operation temp1 glbs_common -= index glbs_common
scoreboard players operation index glbs_common = temp1 glbs_common

# 获取和对比
function global_shop:storage/store_manager/get_player_shop_list_elem_by_index
execute store result score id0 glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.id
execute on passengers if entity @s[type=minecraft:item_display,tag=!glbs_killed] if score @s glbs_order matches 13 store result score id1 glbs_common run data get entity @s item.tag.global_shop.id
return run execute if score id0 glbs_common = id1 glbs_common