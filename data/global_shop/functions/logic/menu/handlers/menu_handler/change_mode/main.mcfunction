# @brief 切换到玩家商店主界面
# @executor Menu

# 切换到主菜单
   # 取主菜单数据
   data modify storage global_shop:common g_itemsToDisplay set from storage global_shop:menu_preset main
   # 取角度差 temp
   execute store result score temp glbs_common run function global_shop:logic/menu/handlers/menu_handler/get_angle_diff
   # 取 temp 最近的 12 的倍数
   execute store result score temp glbs_common run function global_shop:logic/math_utils/get_recent_12_multiples
   # 旋转
   execute store result score g_columnDiff glbs_common run scoreboard players operation temp glbs_common /= 12 glbs_common
   function global_shop:logic/menu/handlers/menu_handler/rotate
   # 申请临时世界实体
   #execute at @s run function global_shop:logic/temp_world_entity_utils/carry_temp_world_entity
   # 清除周围所有物品展示实体
   execute as @e[distance=..5,type=minecraft:item_display,tag=global_shop] run function global_shop:logic/item_display_entity/kill
   # 更改模式
   scoreboard players operation @s glbs_mode = MODE_MAIN glbs_common
   # 通知
   execute on passengers if entity @s[type=minecraft:player] run tellraw @s ["\u00a7a欢迎使用商店"]
   # 生成物品展示实体（注意：上面旋转，但是本函数的执行环境未改变，需要校正旋转角）
   execute rotated as @s run function global_shop:ui/display_manager/summon_item_displays