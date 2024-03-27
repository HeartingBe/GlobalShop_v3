# 打开商店
execute if score @s open_global_shop matches 1 at @s run function global_shop:logic/menu/menu
    
execute unless score @s open_global_shop matches 1 run tellraw @s ["\u00a7e打开商店的方法:\n\u00a7a1. 执行命令: \u00a77(可直接左键点击)\n ",{"text":"/trigger open_global_shop set 1","color":"gray","clickEvent":{"action":"run_command","value":"/trigger open_global_shop set 1"},"hoverEvent":{"action":"show_text","contents":["\u00a7a左键点击直接执行命令来打开商店^_^"]}},"\n\u00a7a2. 用 1 根木棍合成 1 根木棍"]

scoreboard players set @s open_global_shop 0