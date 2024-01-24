# @brief 根据 g_itemsToDisplay 参数提供的物品数据生成物品展示实体
# @param g_itemsToDisplay: List<ItemData>

execute unless data storage global_shop:common g_itemsToDisplay[26] run tellraw @a ["\u00a7c物品不足 27 个，生成错误"]

# 第一行
execute rotated ~-48 ~ positioned ^ ^2 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/0
execute rotated ~-36 ~ positioned ^ ^2 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/3
execute rotated ~-24 ~ positioned ^ ^2 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/6
execute rotated ~-12 ~ positioned ^ ^2 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/9
execute positioned ^ ^2 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/12
execute rotated ~12 ~ positioned ^ ^2 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/15
execute rotated ~24 ~ positioned ^ ^2 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/18
execute rotated ~36 ~ positioned ^ ^2 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/21
execute rotated ~48 ~ positioned ^ ^2 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/24

# 第二行
execute rotated ~-48 ~ positioned ^ ^1 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/1
execute rotated ~-36 ~ positioned ^ ^1 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/4
execute rotated ~-24 ~ positioned ^ ^1 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/7
execute rotated ~-12 ~ positioned ^ ^1 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/10
execute positioned ^ ^1 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/13
execute rotated ~12 ~ positioned ^ ^1 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/16
execute rotated ~24 ~ positioned ^ ^1 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/19
execute rotated ~36 ~ positioned ^ ^1 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/22
execute rotated ~48 ~ positioned ^ ^1 ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/25

# 第三行
execute rotated ~-48 ~ positioned ^ ^ ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/2
execute rotated ~-36 ~ positioned ^ ^ ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/5
execute rotated ~-24 ~ positioned ^ ^ ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/8
execute rotated ~-12 ~ positioned ^ ^ ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/11
execute positioned ^ ^ ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/14
execute rotated ~12 ~ positioned ^ ^ ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/17
execute rotated ~24 ~ positioned ^ ^ ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/20
execute rotated ~36 ~ positioned ^ ^ ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/23
execute rotated ~48 ~ positioned ^ ^ ^4 summon minecraft:item_display run function global_shop:ui/display_manager/summon_item_displays/26

# 隔 2 tick 将这些物品展示实体变为正常大小
schedule function global_shop:ui/display_manager/summon_item_displays/item_displays_state_next_tick 2t replace