# macro {id: string, Count: byte, tag: string}
# @param g_itemIdTranslateJson 物品的翻译 Json
# @executor Player

#log
#$say $(id) $(Count) $(tag)

$tellraw @s ["\u00a7b是自己卖出的, 物品信息：",{"storage":"global_shop:common","nbt":"g_itemIdTranslateJson","interpret":true,"hoverEvent":{"action":"show_item","contents":{"id":"$(id)","count":$(Count),"tag":$(tag)}}}]