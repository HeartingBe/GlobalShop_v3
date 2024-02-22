#> global_shop:logic/menu/handlers/edit_main_menu_handler/handle/admin_add_sell_item/cooling_time_not_end
# @executor Player

tellraw @s ["冷却时间未到, 还剩 ",{"score":{"objective":"glbs_sell_item_cooling_time","name":"@s"}}," s"]

scoreboard players set @s glbs_sell_item_price 0

# 冷却时间未到，阻止玩家上架物品，但重新 enable
scoreboard players enable @s glbs_sell_item_price