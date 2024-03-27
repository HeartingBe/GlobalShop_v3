# @executor Player

scoreboard players enable @s glbs_inputter_1

tellraw @s [{"text":"光标移到这里来添加要出售的物品","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"hoverEvent":{"action":"show_text","contents":["\u00a7a1. 把要添加的出售物品拿在主手\n2. 执行: \n \u00a77/trigger glbs_inputter_1 set ?\n\n\u00a7a左键点击来将命令填入聊天栏\n\u00a7a请将 ? 替换为出售价格"]}}]

function global_shop:sound/success