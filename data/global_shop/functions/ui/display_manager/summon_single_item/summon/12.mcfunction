# @param g_baseRotation Menu 的旋转角
# @executor ItemDisplayEntity

function global_shop:ui/display_manager/summon_single_item/summon/merge_template

# 写入数据
data modify entity @s item merge from storage global_shop:common g_itemsToDisplay[12]

# 编号
scoreboard players set @s glbs_order 12

# 骑 Menu
ride @s mount @e[type=minecraft:block_display,tag=glbs_to_carry_item_display,distance=..5,limit=1]

# 旋转，让物品显示在玩家前方
scoreboard players set incre glbs_common 0
    # 物品的朝向实际上需要和玩家的朝向相反，才能将正面面朝玩家
    scoreboard players add incre glbs_common 180
execute store result score rotation_res glbs_common run function global_shop:utils/cal_horizon_rotation
execute store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res glbs_common
execute on passengers store result entity @s Rotation[0] float 1 run scoreboard players get rotation_res glbs_common

# 物品展示实体和骑着的文本展示实体位置校准
function global_shop:ui/display_manager/summon_single_item/summon/adjust_pos_line_1

function global_shop:logic/item_display_entity/display_count