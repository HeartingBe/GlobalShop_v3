# @executor Player

scoreboard players enable @s glbs_inputter_1

tellraw @s [" \n\u00a7f\u25a0\u00a77\u25a0\u00a78\u25a0 ",{"text":"鼠标移到此处来添加要回收的物品","color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"hoverEvent":{"action":"show_text","contents":["\u00a7a请把要添加的回收物品拿在主手\n执行：\u00a77/trigger glbs_inputter_1 set ?\n\u00a7a左键点击来将命令填入聊天栏\n\n\u00a7e请将 ? 替换为回收价格"]}}]

function global_shop:sound/success