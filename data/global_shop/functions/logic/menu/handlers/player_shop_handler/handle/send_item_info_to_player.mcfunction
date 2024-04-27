# @param g_itemData
# @executor Player

# 将物品信息 g_itemData 处理成可以用原始 json 文本引用解析的格式，存储在 global_shop:common g_itemHoverEventString
function global_shop:logic/item_data/parse_item_hoverevent_json

# 发送物品信息
   # 区分是自己的还是别人卖的
   # temp1: 物品来源玩家 id；temp2: 玩家 uid
   execute store result score temp1 glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid
   execute store result score temp2 glbs_common run scoreboard players get @s glbs_uid
   # 自己的
   execute if score temp1 glbs_common = temp2 glbs_common run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop.buy.yourself_tip\"","color":"green"},{"text":" -> ","color":"green"},{"type":"nbt","storage":"global_shop:common","nbt":"g_itemHoverEventString","interpret":true}]
   # 别人卖的
   execute unless score temp1 glbs_common = temp2 glbs_common run tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop.buy.tellraw_item\"","color":"green"},{"text":" -> ","color":"green"},{"type":"nbt","storage":"global_shop:common","nbt":"g_itemHoverEventString","interpret":true}]
   # 音效
   function global_shop:sound/target