#> global_shop:logic/menu/perform
# @brief Menu 实体进行处理，完成数据包大部分运行逻辑，实现各种功能
# @executor Menu

# 以下情况需要关闭该连接
   # 检查玩家脱离
   scoreboard players set temp glbs_common 0
   execute on passengers if entity @s[type=minecraft:player] run scoreboard players add temp glbs_common 1
   execute if score temp glbs_common matches 0 run return run function global_shop:logic/menu/kill

   # 检查玩家长时间不操作


   # 检查玩家退出重进


# 申请临时世界实体
function global_shop:logic/temp_world_entity_utils/carry_temp_world_entity

# 执行不同模式的处理逻辑
function global_shop:logic/menu/polymorphic_mode