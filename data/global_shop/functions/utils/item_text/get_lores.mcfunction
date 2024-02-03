#> global_shop:utils/item_text/get_lores
#@executor item_display

data modify storage global_shop:common item.lores set from entity @s item.tag.display.Lore
#遍历这个列表
data modify storage global_shop:common args.text set from storage global_shop:common item.lores[0]
data remove storage global_shop:common item.lores[0]
function global_shop:utils/item_text/get_lores/walk
function global_shop:utils/item_text/get_lores/macro2 with storage global_shop:common args