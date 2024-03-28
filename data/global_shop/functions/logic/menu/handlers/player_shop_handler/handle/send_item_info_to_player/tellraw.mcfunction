# macro {id: string, Count: byte, tag: string}
# @param g_itemIdTranslateJson 物品的翻译 Json
# @executor Player

#log
#$say $(id) $(Count) $(tag)

$tellraw @s [{"text":"玩家商店物品 -> ","color":"green"},"\u00a7f[",{"storage":"global_shop:common","nbt":"g_itemIdTranslateJson","interpret":true,"hoverEvent":{"action":"show_item","contents":{"id":"$(id)","count":$(Count),"tag":$(tag)}}},"\u00a7f]"]