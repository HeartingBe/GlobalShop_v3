#> global_shop:logic/menu/perform
# @brief Menu 实体进行处理，完成数据包大部分运行逻辑，实现各种功能
# @executor Menu

# 以下情况需要关闭该连接
   # 检查商店整体完整性
   execute store result score temp glbs_common run function global_shop:logic/menu/check_completeness
   execute if score temp glbs_common matches 0 run return run function global_shop:logic/menu/perform/incomplete

   # 检查玩家长时间不操作【放弃，改为限制玩家最长使用时间】
   #-

   # 检查玩家退出重进
   execute on passengers if entity @s[type=minecraft:player] if score @s glbs_leave_game matches 1.. run function global_shop:logic/menu/perform/player_leave_game

# 申请临时世界实体【已去除，因为物品展示实体已经骑乘在 Menu 上，不需要再通过临时世界 marker 重新选回 Menu】
#function global_shop:logic/temp_world_entity/marker/carry

# 执行不同模式的处理逻辑
function global_shop:logic/menu/polymorphic_mode