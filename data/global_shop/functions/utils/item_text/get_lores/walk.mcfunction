#遍历列表
execute store result score list_length glbs_common run data get storage global_shop:common item.lores
execute if score list_length glbs_common matches 0 run return 0
data modify storage global_shop:common args.append set from storage global_shop:common item.lores[0]
function global_shop:utils/item_text/get_lores/macro with storage global_shop:common args
data remove storage global_shop:common item.lores[0]
function global_shop:utils/item_text/get_lores/walk