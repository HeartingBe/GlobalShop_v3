# macro {id: string, Count: byte, tag: string}
# @param g_itemIdTranslateJson 物品的翻译 Json
# @executor Player

#log
#$say $(id) $(Count) $(tag)

$tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop.buy.tellraw_item\"","color":"green"},{"text":" -> ","color":"green"},"\u00a7f[",{"storage":"global_shop:common","nbt":"g_itemIdTranslateJson","interpret":true,"hoverEvent":{"action":"show_item","contents":{"id":"$(id)","count":$(Count),"tag":$(tag)}},"bold":true},"\u00a7f]"]