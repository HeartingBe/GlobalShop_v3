#tellraw @s [{"nbt":"g_lang.deposit.show_money.1","storage":"global_shop:common"},{"score":{"name":"addAmount","objective":"glbs_common"}}," ",{"nbt":"g_lang.deposit.show_money.2","storage":"global_shop:common"},{"score":{"name":"playerMoney","objective":"glbs_common"}}]
tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"cash.exchange.draw_success\"","color":"aqua"}," ",{"score":{"name":"playerMoney","objective":"glbs_common"},"color":"yellow"}]
function global_shop:sound/success