# 打开商店
execute if score @s open_global_shop matches 1 at @s run function global_shop:logic/menu/menu
    
execute unless score @s open_global_shop matches 1 run tellraw @s [{"text":"打开商店的方法:","color":"yellow"},"\n",{"text":"1. 执行命令: ","color":"green"},{"text":"(可直接左键点击)","color":"gray"},"\n ",{"text":"/trigger open_global_shop set 1","color":"gray","clickEvent":{"action":"run_command","value":"/trigger open_global_shop set 1"},"hoverEvent":{"action":"show_text","contents":[{"text":"左键点击直接执行命令","color":"green"}]}},"\n",{"text":"2. 用 1 根木棍合成 1 根木棍","color":"green"}]

scoreboard players set @s open_global_shop 0