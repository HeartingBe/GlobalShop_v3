# macro {id: string, Count: byte, tag: string}
# @executor Player

#log
#$say $(id) $(Count) $(tag)

$tellraw @s ["\u00a7c再次左键来取回：",{"storage":"global_shop:common","nbt":"g_itemIdTranslateJson","interpret":true,"hoverEvent":{"action":"show_item","contents":{"id":"$(id)","count":$(Count),"tag":$(tag)}}}]