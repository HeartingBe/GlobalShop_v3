function global_shop:logic/player/give_item

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"\"g_lang.player_shop.buy.success\"","color":"green"}]

function global_shop:sound/success