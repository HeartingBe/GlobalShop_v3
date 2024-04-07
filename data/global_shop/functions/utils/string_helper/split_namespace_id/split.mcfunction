# 找到冒号，跳出循环

# 标记成功
scoreboard players set temp.success glbs_common 0

#索引位置现在在冒号之后的位置，切割出冒号之后的 id 并写入 return.id
    #(即，index = 冒号下标 + 1)
data remove storage global_shop:common temp2
execute store result storage global_shop:common temp2.index int 1 run scoreboard players get index glbs_common
function global_shop:utils/string_helper/split_namespace_id/get_id with storage global_shop:common temp2

# 将 index 移到冒号的下标处
scoreboard players remove index glbs_common 1

# 如果冒号就是源字符串第一个字符，则认为命名空间是 "minecraft"
execute if score index glbs_common matches 0 run return run data modify storage global_shop:common return.namespace set value "minecraft"

# 否则，切割出冒号之前的命名空间
execute store result storage global_shop:common temp2.index int 1 run scoreboard players get index glbs_common
function global_shop:utils/string_helper/split_namespace_id/get_namespace with storage global_shop:common temp2
