# log
#tellraw @a ["退还 ",{"score":{"objective":"glbs_common","name":"i"}}]
# 取玩家商店列表第一个物品
data modify storage global_shop:common g_itemData set from storage global_shop:storage g_playerShopList[0]
# 修改 mode
execute store result storage global_shop:common g_itemData.tag.global_shop.type int 1 run scoreboard players get ItemDataType::RETURN glbs_common
# 写入退回理由
data modify storage global_shop:common g_itemData.tag.global_shop.returnReason set value {"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"item_frame.return_reason.expire\"","color":"red"}
# 取卖家 uid
data remove storage global_shop:common temp
data modify storage global_shop:common temp.uid set from storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
# 去掉 global_shop，如果 tag 为空就去掉 tag
   # 更改：不去掉，应保留 id 方便后续玩家浏览退回物品和取回
   #data remove storage global_shop:common g_itemData.tag.global_shop
   #execute store result score temp3 glbs_common run data get storage global_shop:common g_itemData.tag
   #execute if score temp3 glbs_common matches 0 run data remove storage global_shop:common g_itemData.tag
# 写入卖家退还物品列表
function global_shop:storage/store_manager/append_to_return_list with storage global_shop:common temp
# 去除玩家商店列表第一个物品，并去除其在玩家正在出售的物品列表中的第一个物品（都是排在首个）
data remove storage global_shop:storage g_playerShopList[0]
function global_shop:storage/store_manager/return_expire_item/loop_return/macro_delete_from_selling_list with storage global_shop:common temp

scoreboard players add i glbs_common 1
execute if score i glbs_common < temp2 glbs_common run function global_shop:storage/store_manager/return_expire_item/loop_return