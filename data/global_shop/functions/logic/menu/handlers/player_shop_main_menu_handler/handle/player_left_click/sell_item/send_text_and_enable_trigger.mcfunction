# @executor Player

scoreboard players enable @s glbs_inputter_1

function global_shop:sound/success

tellraw @s [{"text":"光标移到这里来出售物品","color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"hoverEvent":{"action":"show_text","contents":[{"text":"1. 把要出售的物品拿在主手","color":"green"},"\n",{"text":"2. 执行: ","color":"green"},"\n ",{"text":"/trigger glbs_inputter_1 set ?","color":"gray"},"\n\n",{"text":"左键点击来将命令填入聊天栏","color":"green"},"\n",{"text":"请在 ? 处填写物品售价","color":"green"}]}}]