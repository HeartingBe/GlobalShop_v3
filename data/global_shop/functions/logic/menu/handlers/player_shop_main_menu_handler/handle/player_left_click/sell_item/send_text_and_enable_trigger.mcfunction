scoreboard players enable @s glbs_sell_item

tellraw @s [" \n\u00a7f\u25a0\u00a77\u25a0\u00a78\u25a0 ",{"text":"点击此处来出售物品","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_sell_item set ?"},"hoverEvent":{"action":"show_text","contents":["\u00a7a左键点击将命令填入聊天栏\n\n\u00a7e请将 ? 替换为你想要的物品价格"]}}]