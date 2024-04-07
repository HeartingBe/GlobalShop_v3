# 切割出 namespaceID.substr(index)
# 等价于 namespaceID.substr(index,namespaceID.length())
$data modify storage global_shop:common return.id set string storage global_shop:common splitNamespaceID.namespaceID $(index)