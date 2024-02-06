# @brief 测试用，随便改
# @macro {value: T}

$say $(value)

$tellraw @s {"text":"114514","color":"yellow","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:grass_block","count":1,"tag":$(value)}}}

# 使用双引号
#tellraw @s {"text":"114514","color":"yellow","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:grass_block","count":1,"tag":"{display:{Name:\"\\\"114514\\\"\"}}"}}}
   # 使用单引号可以减少 tag 一层嵌套：
   #tellraw @s {"text":"114514","color":"yellow","hoverEvent":{"action":"show_item","contents":{"id":"minecraft:grass_block","count":1,"tag":"{display:{Name:'\"114514\"'}}"}}}