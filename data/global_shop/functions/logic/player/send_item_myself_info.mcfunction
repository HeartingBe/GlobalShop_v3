# macro {id: string, Count: byte, tag: string}
# @executor Player

#log
#$say $(id) $(Count) $(tag)

$tellraw @s ["\u00a7b是自己卖出的, 物品信息：",{"text":"QwQ","color":"yellow","hoverEvent":{"action":"show_item","contents":{"id":"$(id)","count":$(Count),"tag":$(tag)}}}]