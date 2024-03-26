# @executor Admin

tellraw @s ["\n","\u00a7dGlobalShop \u00a7c已经初始化了\n\u00a7a要重新初始化, 请",{"text":"点击此处","color":"yellow","underlined":true,"clickEvent":{"action":"run_command","value":"/function global_shop:init_classes"}}]

execute at @s run function global_shop:sound/success