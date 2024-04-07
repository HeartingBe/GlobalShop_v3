#> global_shop:logic/item_data/parse_enchantment/get_translate_string
# @param global_shop:common temp.translate_key 出参，翻译键

# 本函数中构造临时宏参数使用 global_shop:common temp2

#查表，如果表中有则直接返回
    # 将附魔 id 用 json 解析成两层双引号
    # enchIdString 出参，格式是 enchIdString:{id:'"xxx"'}
    function global_shop:logic/item_data/parse_enchantment/parse_ench_id
    function global_shop:logic/item_data/parse_enchantment/macro/find_translate_key with storage global_shop:common enchIdString
    # temp1 是 find_translate_key 函数的出参，为 1 表示从 global_shop:storage enchantment 中找到了该翻译串，直接返回
    execute if score temp1 glbs_common matches 1 run return 0

#没有找到键值对，则遍历字符串，找到其第一个冒号的位置，分隔出命名空间和 id
    # 出参 global_shop:common return {namespace:"",id:?s}
    data modify storage global_shop:common splitNamespaceID.namespaceID set from storage global_shop:common temp.enchantments[0].id
    function global_shop:utils/string_helper/split_namespace_id

#拼接翻译字符串
scoreboard players set isError glbs_common 1
function global_shop:logic/item_data/parse_enchantment/macro/concat_id_string with storage global_shop:common return

# 拼接失败（命名空间 或 id 含有特殊字符）
    execute if score isError glbs_common matches 1 run data modify storage global_shop:common temp.translate_key set from storage global_shop:common temp.enchantments[0].id
        # 存表（将该附魔 id 的翻译键存储为它自身）
        function global_shop:logic/item_data/parse_enchantment/macro/set_pair with storage global_shop:common enchIdString
    execute if score isError glbs_common matches 1 run return 0

# 拼接成功
    #存表（将解析过的附魔存储，下次查表可以直接查到）
    function global_shop:logic/item_data/parse_enchantment/macro/set_pair with storage global_shop:common enchIdString
    #对于默认的minecraft命名空间，要额外存储一份不带 minecraft 命名空间的翻译 key
    execute store success score isntDefault glbs_common run data modify storage global_shop:common return.namespace set value "minecraft"
    execute if score isntDefault glbs_common matches 0 run return 0
        # 在临时世界文本实体上解析该项附魔 id（不含 minecraft 命名空间）
        data modify entity 00000d3a-0000-0d3a-0000-17cc0000edfa text set value '{"type":"nbt","storage":"global_shop:common","nbt":"return.id"}'
        data modify storage global_shop:common enchIdString.id set from entity 00000d3a-0000-0d3a-0000-17cc0000edfa text
    function global_shop:logic/item_data/parse_enchantment/macro/set_pair with storage global_shop:common enchIdString