# 如果原先已经有内容，需要先添加换行符
execute if data storage global_shop:common g_text.value run data modify storage global_shop:common g_text.value append from storage global_shop:storage seperator

data modify storage global_shop:common g_text.value append value {text:"",extra:[]}