execute store result score slot glbs_common run data get storage global_shop:common g_checkSlotResult[0]
data remove storage global_shop:common g_checkSlotResult[0]

function global_shop:logic/player/clear_slot

execute if data storage global_shop:common g_checkSlotResult[1] run function global_shop:logic/menu/handlers/recycle_shop_handler/handle/recycle/while_list_has_two_elems