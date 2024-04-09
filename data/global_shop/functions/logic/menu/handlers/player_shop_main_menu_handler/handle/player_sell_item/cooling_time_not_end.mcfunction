#> global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/cooling_time_not_end
# @executor Player

tellraw @s [{"type":"nbt","storage":"global_shop:storage","nbt":"TELLRAW_PREFIX","interpret":true},{"type":"nbt","storage":"global_shop:storage","nbt":"g_lang.\"player_shop_main.sell.cool_down\"","color":"red"}," ",{"score":{"objective":"glbs_sell_item_cooling_time","name":"@s"},"color":"yellow"}]

function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0

# 冷却时间未到，阻止玩家上架物品，但重新 enable
scoreboard players enable @s glbs_inputter_1