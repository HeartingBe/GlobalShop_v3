# @brief 检查商店整体完整性
# @executor Menu
# @return 0 - 不完整；1 - 完整

# Menu 上面需要骑着这些实体，并携带标签 global_shop：
    # 1 个玩家
    # 1 个交互实体
    # 1 个文本展示实体
    # 27 个物品展示实体（不携带标签 glbs_killed）
    # 总共 1 + 1 + 1 + 27 = 30 个实体

scoreboard players set temp glbs_common 0
execute on passengers run function global_shop:logic/menu/check_completeness/1

# log
#tellraw @a [{"score":{"objective":"glbs_common","name":"temp"}}]

return run execute if score temp glbs_common matches 30