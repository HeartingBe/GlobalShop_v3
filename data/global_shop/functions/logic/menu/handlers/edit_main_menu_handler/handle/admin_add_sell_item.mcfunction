#> global_shop:logic/menu/handlers/edit_main_menu_handler/handle/admin_add_sell_item
# @brief 管理员向出售商店添加物品
# @executor Admin

# tag 玩家输入

# 输入是负数
execute if score @s glbs_inputter_1 matches ..-1 run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/admin_add_sell_item/negative_num
# 输入过大
execute if score @s glbs_inputter_1 > MAX_PLAYER_INPUT glbs_common run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/admin_add_sell_item/too_large_input

# 主手为空
execute unless data entity @s SelectedItem run return run function global_shop:logic/menu/handlers/edit_main_menu_handler/handle/admin_add_sell_item/main_hand_has_no_item

# 检查通过：
   # 构造 SellShopItemData
      # 获取玩家手上的物品
      data modify storage global_shop:common g_itemData set from entity @s SelectedItem
      # 写入 type_
      execute store result storage global_shop:common g_itemData.tag.global_shop.type int 1 run scoreboard players get ItemDataType::SELL_SHOP glbs_common
      # 写入 id_
      execute store result storage global_shop:common g_itemData.tag.global_shop.id int 1 run scoreboard players get g_nextSellShopId glbs_common
      scoreboard players add g_nextSellShopId glbs_common 1
      # 写入 price_
      execute store result storage global_shop:common g_itemData.tag.global_shop.price int 1 run scoreboard players get @s glbs_inputter_1
      # 写入 sourcePlayerUid_
      execute store result storage global_shop:common g_itemData.tag.global_shop.sourcePlayerUid int 1 run scoreboard players get @s glbs_uid

   # 将该物品写入出售商店列表
   function global_shop:storage/store_manager/append_to_sell_shop_list

   # 通知
   tellraw @s ["\u00a7a成功设置该物品到出售商店"]
   function global_shop:sound/success

scoreboard players set @s glbs_inputter_1 0