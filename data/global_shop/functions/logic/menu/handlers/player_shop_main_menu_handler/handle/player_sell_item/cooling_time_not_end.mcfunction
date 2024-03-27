#> global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/cooling_time_not_end
# @executor Player

tellraw @s ["\u00a7c上架物品有冷却时间, 还剩 ",{"score":{"objective":"glbs_sell_item_cooling_time","name":"@s"},"color":"yellow"},"\u00a7es"]

function global_shop:sound/fail

scoreboard players set @s glbs_inputter_1 0

# 冷却时间未到，阻止玩家上架物品，但重新 enable
scoreboard players enable @s glbs_inputter_1