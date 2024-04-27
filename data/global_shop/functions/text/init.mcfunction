data remove storage global_shop:common temp
data modify storage global_shop:common temp.lang set from storage global_shop:storage g_lang.lang

data remove storage global_shop:storage g_lang
data modify storage global_shop:storage g_lang.lang set from storage global_shop:common temp.lang

function global_shop:text/init/macro with storage global_shop:common temp