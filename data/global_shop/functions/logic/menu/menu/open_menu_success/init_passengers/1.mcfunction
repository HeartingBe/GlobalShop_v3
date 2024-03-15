execute if entity @s[type=minecraft:player] run function global_shop:logic/player/init_state

execute if entity @s[type=minecraft:interaction] run function global_shop:logic/interactor/init_state

execute if entity @s[type=minecraft:text_display] run function global_shop:logic/text_display/init_state