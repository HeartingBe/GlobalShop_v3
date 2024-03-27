# macro {id: string, Count: byte, tag: string}
# @executor Player

#log
#$say $(id) $(Count) $(tag)

$tellraw @s ["\u00a7a再次左键取回 -> \u00a7f[",{"storage":"global_shop:common","nbt":"g_itemIdTranslateJson","interpret":true,"hoverEvent":{"action":"show_item","contents":{"id":"$(id)","count":$(Count),"tag":$(tag)}}},"\u00a7f]"]