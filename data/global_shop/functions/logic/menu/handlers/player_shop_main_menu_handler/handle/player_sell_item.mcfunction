#> global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item
# @brief 上架玩家主手的物品
# @executor Player

# 该玩家冷却时间未结束
execute if score @s glbs_sell_item_cooling_time matches 1.. unless score @s glbs_permission = Permission::ADMIN glbs_common run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/cooling_time_not_end

# 该玩家上架和回退物品总数达到最大值
scoreboard players operation temp glbs_common = @s glbs_sell_num
scoreboard players operation temp glbs_common += @s glbs_return_num
execute if score temp glbs_common >= PLAYER_MAX_SELL_AND_RETURN_NUM glbs_common run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/reach_the_limit

# 输入是负数
execute if score @s glbs_sell_item_price matches ..0 run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/invalid_num

# 主手为空
execute unless data entity @s SelectedItem run return run function global_shop:logic/menu/handlers/player_shop_main_menu_handler/handle/player_sell_item/main_hand_has_no_item

# 检查通过：
   # 构造 PlayerShopItemData
      # 获取玩家手上的物品
      data modify storage global_shop:common g_itemData set from entity @s SelectedItem
      # 写入 type_
      execute store result storage global_shop:common g_itemData.tag.global_shop.type int 1 run scoreboard players get ItemDataType::PLAYER_SHOP glbs_common
      # 写入 id_
      execute store result storage global_shop:common g_itemData.tag.global_shop.id int 1 run scoreboard players get g_nextPlayerShopId glbs_common
      scoreboard players add g_nextPlayerShopId glbs_common 1
      # 写入 price_
      execute store result storage global_shop:common g_itemData.tag.global_shop.price int 1 run scoreboard players get @s glbs_sell_item_price
      # 写入到期时间 expireTime_
      scoreboard players operation temp glbs_common = g_time glbs_common
      scoreboard players operation temp glbs_common += SELL_ITEM_EFFECTIVE_TIME glbs_common
      execute store result storage global_shop:common g_itemData.tag.global_shop.expireTime int 1 run scoreboard players get temp glbs_common

   # 设置玩家上架物品冷却时间
   scoreboard players operation @s glbs_sell_item_cooling_time = SELL_ITEM_COOLING_TIME glbs_common
   
   # 将物品写入玩家商店出售物品总表 以及该玩家正在出售的物品列表
   function global_shop:storage/store_manager/append_to_player_shop_list

   # 移除玩家手中的物品
   item replace entity @s weapon.mainhand with minecraft:air

   # 更新玩家出售物品的数量
   scoreboard players add @s glbs_sell_num 1

   # 通知
   tellraw @s ["\u00a7a出售成功"]

scoreboard players set @s glbs_sell_item_price 0