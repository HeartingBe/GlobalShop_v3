#是原版，判断是否不需要展示等级
scoreboard players set glbs_common isLevel1 0
function global_shop:logic/item_data/parse_enchantment/macro/if_level1 with storage global_shop:common temp.enchantments[0]
execute if score ifLevel1 glbs_common matches 1 run return 0

function global_shop:logic/item_data/parse_enchantment/macro/append_level_string with storage global_shop:common temp.enchantments[0]