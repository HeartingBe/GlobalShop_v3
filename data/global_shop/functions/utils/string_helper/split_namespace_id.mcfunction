#> global_shop:utils/string_helper/split_namespace_id
# 将一个字符串切割成为命名空间和ID。如果没有找到分隔符，或命名空间为空，则命名空间为minecraft
# @api
# @参数 `storage global_shop:common splitNamespaceID.namespaceID`
# @返回 `storage global_shop:common return.namespace` 命名空间
# @返回 `storage global_shop:common return.id` ID

data modify storage global_shop:common originalString set from storage global_shop:common splitNamespaceID.namespaceID
scoreboard players set index glbs_common 1
scoreboard players set temp.success glbs_common -1
execute store result score _length glbs_common run data get storage global_shop:common originalString
# 逐个字符串地比对
function global_shop:utils/string_helper/split_namespace_id/foreach
# 是否找到了分隔符，如果没有找到，整个字符串就是ID，命名空间为minecraft
execute if score temp.success glbs_common matches -1 run data modify storage global_shop:common return.namespace set value "minecraft"
execute if score temp.success glbs_common matches -1 run data modify storage global_shop:common return.id set from storage global_shop:common splitNamespaceID.namespaceID