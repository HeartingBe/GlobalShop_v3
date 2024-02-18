# @brief 根据 g_itemsToDisplay 参数提供的物品数据生成物品展示实体
# @param g_itemsToDisplay: List<ItemData>

# log
execute unless data storage global_shop:common g_itemsToDisplay[26] run tellraw @a ["\u00a7c物品不足 27 个，生成错误"]

function global_shop:ui/display_manager/summon_single_item/0
function global_shop:ui/display_manager/summon_single_item/1
function global_shop:ui/display_manager/summon_single_item/2
function global_shop:ui/display_manager/summon_single_item/3
function global_shop:ui/display_manager/summon_single_item/4
function global_shop:ui/display_manager/summon_single_item/5
function global_shop:ui/display_manager/summon_single_item/6
function global_shop:ui/display_manager/summon_single_item/7
function global_shop:ui/display_manager/summon_single_item/8
function global_shop:ui/display_manager/summon_single_item/9
function global_shop:ui/display_manager/summon_single_item/10
function global_shop:ui/display_manager/summon_single_item/11
function global_shop:ui/display_manager/summon_single_item/12
function global_shop:ui/display_manager/summon_single_item/13
function global_shop:ui/display_manager/summon_single_item/14
function global_shop:ui/display_manager/summon_single_item/15
function global_shop:ui/display_manager/summon_single_item/16
function global_shop:ui/display_manager/summon_single_item/17
function global_shop:ui/display_manager/summon_single_item/18
function global_shop:ui/display_manager/summon_single_item/19
function global_shop:ui/display_manager/summon_single_item/20
function global_shop:ui/display_manager/summon_single_item/21
function global_shop:ui/display_manager/summon_single_item/22
function global_shop:ui/display_manager/summon_single_item/23
function global_shop:ui/display_manager/summon_single_item/24
function global_shop:ui/display_manager/summon_single_item/25
function global_shop:ui/display_manager/summon_single_item/26

# 将这些物品展示实体变为正常大小
function global_shop:ui/display_manager/on_item_summon