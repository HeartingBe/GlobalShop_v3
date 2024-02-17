scoreboard players set temp.success glbs_common 0
#索引位置现在在冒号之后的位置
execute store result storage global_shop:common splitNamespaceID.index int 1 run scoreboard players get index glbs_common
function global_shop:utils/string_helper/split_namespace_id/get_id with storage global_shop:common splitNamespaceID

scoreboard players remove index glbs_common 1

execute if score index glbs_common matches 0 run return run data modify storage global_shop:common return.namespace set value "minecraft"
execute store result storage global_shop:common splitNamespaceID.index int 1 run scoreboard players get index glbs_common
function global_shop:utils/string_helper/split_namespace_id/get_namespace with storage global_shop:common splitNamespaceID
