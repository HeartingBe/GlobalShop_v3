# @brief 增加玩家的金钱
# @executor Player
execute store result score addAmount glbs_common run data get storage global_shop:common g_itemData.tag.global_shop.price
function global_shop:logic/player/add_money

# 移除物品
   # g_checkSlotResult: 对应的物品栏位列表
   # remainingCount: 物品栏位列表中，最后一项需要为玩家留下的数量
   # 第 1 步：循环检查 g_checkSlotResult 是否剩余两个元素
      # 如果是：移除 g_checkSlotResult[0] 对应的栏位，然后移除 g_checkSlotResult[0]
   # 第 2 步：此时剩下最后一项，用物品修饰器更改数量为 remainingCount

# 第 1 步
execute if data storage global_shop:common g_checkSlotResult[1] run function global_shop:logic/menu/handlers/recycle_shop_handler/handle/recycle/while_list_has_two_elems

# 第 2 步
execute store result score slot glbs_common run data get storage global_shop:common g_checkSlotResult[0]
scoreboard players operation newCount glbs_common = remainingCount glbs_common
function global_shop:logic/player/modify_item_count

# 通知
execute store result score playerMoney glbs_common run function global_shop:logic/player/get_money
tellraw @s ["\u00a7a回收成功, 获得收入: ",{"score":{"objective":"glbs_common","name":"addAmount"},"color":"yellow"},"\u00a7a, 现在你有 ",{"score":{"objective":"glbs_common","name":"playerMoney"},"color":"yellow"}," \u00a7a金钱"]