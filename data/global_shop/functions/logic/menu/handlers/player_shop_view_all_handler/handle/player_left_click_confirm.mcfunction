# @executor Menu
# @other 进入该函数时，物品一定存在

# 执行玩家购买的逻辑

# log
execute on passengers if entity @s[type=minecraft:player] run title @s actionbar ["左键确认"]

# 是自己出售的物品（不写入退回列表，因为此时玩家在线，直接还给该玩家）


# 是其他玩家出售的物品，判断金钱是否足够
   # 获取玩家金钱
   execute store result score temp glbs_common run function global_shop:logic/player/get_money

   