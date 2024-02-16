# @param g_text
# @executor TextDisplay

tag @s add global_shop

execute facing entity 00000d3a-0000-0d3a-0000-17cc000017cc feet rotated ~ 0 run tp @s ~ ~ ~ ~ ~

# 写入文本，需要添加单引号
function global_shop:logic/text_display/text_display/macro_set_text with storage global_shop:common g_text