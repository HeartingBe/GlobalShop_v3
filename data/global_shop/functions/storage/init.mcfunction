# 金钱记分板名称
execute unless data storage global_shop:storage g_scoreboard run data modify storage global_shop:storage g_scoreboard set value "glbs_money"

# 消息前缀
   # 简化形式，两层引号
   data modify storage global_shop:storage TEXT_PREFIX_SIMPLE set value '"\\u00a7f\\u25a0\\u00a77\\u25a0\\u00a78\\u25a0 "'
   # 标准形式，一层引号
   data modify storage global_shop:storage g_text_prefix set value {"text":"","extra":[{"text":"■","color":"white"},{"text":"■","color":"gray"},{"text":"■ ","color":"dark_gray"}]}

# 换行符
data modify storage global_shop:storage LINE_BREAK set value '"\\n"'
data modify storage global_shop:storage SEPERATOR set value {"storage":"global_shop:storage","nbt":"LINE_BREAK","interpret":1}