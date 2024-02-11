# @param g_itemData
# @executor Player

# 暂存和取代 1 号位物品的 NBT 值
function global_shop:logic/player/replace_inventory0

# 解析物品 tag
function global_shop:logic/player/item_tag_to_string_on_inventory0

# 发送物品信息
data modify storage global_shop:common temp.itemInfo.id set from storage global_shop:common g_itemData.id
data modify storage global_shop:common temp.itemInfo.Count set from storage global_shop:common g_itemData.Count
data modify storage global_shop:common temp.itemInfo.tag set from entity @s Inventory[{Slot:9b}].tag.display.Name
   # 区分是自己的还是别人卖的
   # temp1: 物品来源玩家 id；temp2: 玩家 uid
   execute store result score temp1 glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
   execute store result score temp2 glbs_common run scoreboard players get @s glbs_uid
   # 自己的
   execute if score temp1 glbs_common = temp2 glbs_common run function global_shop:logic/player/send_item_myself_info with storage global_shop:common temp.itemInfo
   # 别人卖的
   execute unless score temp1 glbs_common = temp2 glbs_common run function global_shop:logic/player/send_item_info with storage global_shop:common temp.itemInfo
data remove storage global_shop:common temp.itemInfo

# 恢复 1 号位物品
function global_shop:logic/player/restore_inventory0_from_storage