# @executor Player

function global_shop:sound/success

tellraw @s [{"text":"光标移到这里来调整物品信息框左右位置","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger glbs_inputter_1 set ?"},"hoverEvent":{"action":"show_text","contents":[{"text":"执行:","color":"green"},"\n ",{"text":"/trigger glbs_inputter_1 set ?","color":"gray"},"\n\n",{"text":"左键点击来将命令填入聊天栏","color":"green"},"\n",{"text":"请将 ? 替换为你希望的位置变化","color":"green"},"\n",{"text":"输入负数使物品信息框向左移动","color":"green"},"\n",{"text":"输入正数使物品信息框向右移动","color":"green"},"\n",{"text":"推荐输入位于 [-10, 10] 的数","color":"green"},"\n",{"text":"你可以多次输入直到调整到满意为止","color":"green"}]}}]

execute on vehicle run scoreboard players operation @s glbs_last_target = @s glbs_last_view_id

scoreboard players enable @s glbs_inputter_1