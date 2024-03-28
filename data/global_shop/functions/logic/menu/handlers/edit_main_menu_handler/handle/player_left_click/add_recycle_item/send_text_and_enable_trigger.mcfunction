# @executor Player

scoreboard players enable @s glbs_inputter_1

tellraw @s [{"text":"光标移到这里来添加要回收的物品","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"hoverEvent":{"action":"show_text","contents":[{"text":"1. 把要添加的回收物品拿在主手","color":"green"},"\n",{"text":"2. 执行: ","color":"green"},"\n ",{"text":"/trigger glbs_inputter_1 set ?","color":"gray"},"\n\n",{"text":"左键点击来将命令填入聊天栏","color":"green"},"\n",{"text":"请将 ? 替换为回收价格","color":"green"}]}}]

function global_shop:sound/success