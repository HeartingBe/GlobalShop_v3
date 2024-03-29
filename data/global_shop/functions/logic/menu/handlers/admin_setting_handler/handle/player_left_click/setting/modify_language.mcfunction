# @executor Admin

data remove storage global_shop:common admin_input

tellraw @s [{"text":"光标移到这里来输入自定义语言","color":"green","clickEvent":{"action":"suggest_command","value":"/data modify storage global_shop:common admin_input set value \"?\""},"hoverEvent":{"action":"show_text","contents":[{"text":"请输入并执行命令:","color":"green"},"\n",{"text":"/data modify storage global_shop:common","color":"gray"},"\n",{"text":" admin_input set value \"?\"","color":"gray"},"\n\n",{"text":"左键点击来将命令填入聊天栏","color":"green"},"\n",{"text":"请将 ? 替换为新的自定义语言","color":"green"},"\n",{"text":"不要去掉双引号","color":"green"}]}},"\n",{"text":"然后点击这里来确认修改(否则修改无效)","color":"yellow","bold":true,"clickEvent":{"action":"run_command","value":"/function global_shop:settings/try_modify_language"},"hoverEvent":{"action":"show_text","contents":[""]}}]

# 音效
function global_shop:sound/success