# @executor Player

scoreboard players enable @s glbs_inputter_1

tellraw @s [{"text":"光标移到这里来添加要出售的物品","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"hoverEvent":{"action":"show_text","contents":[{"text":"1. ","color":"green"},{"text":"把要添加的出售物品拿在主手","color":"green"},"\n",{"text":"2. ","color":"green"},{"text":"执行:","color":"green"}," \n ",{"text":"/trigger glbs_inputter_1 set ?","color":"gray"},"\n\n",{"text":"左键点击来将命令填入聊天栏","color":"green"},"\n",{"text":"请将 ? 替换为出售价格","color":"green"}]}}]

function global_shop:sound/success