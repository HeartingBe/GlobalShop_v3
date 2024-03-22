# 检查该玩家上架和回退物品总数
   # 获取该玩家存储物品总数
   execute store result score temp glbs_common run function global_shop:storage/store_manager/get_player_store_item_num

# 达到总数
execute if score temp glbs_common >= PLAYER_MAX_SELL_AND_RETURN_NUM glbs_common run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/sell_item/reach_the_limit

# 检查通过
    # 引导玩家上架物品
    function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_left_click/sell_item/send_text_and_enable_trigger
    # 记录上一次左键的物品的序号 order
    execute on vehicle run function global_shop:logic/menu/handlers/menu_handler/handle/update_last_click_order