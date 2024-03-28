# @executor TextDisplay

# 默认值：
# transformation:{translation:[1.4f,0.55f,-3.0f]}
# transformation 变换
   # translation 平移变换，x 指向右侧，y 指向上方，z 指向后方

# 处理 translation
    # 其中
        # 上下 glbs_st_item_frame_pos_v ∈ [-50, 50]
        # 左右 glbs_st_item_frame_pos_h ∈ [-50, 50]
        # 前后 glbs_st_item_frame_pos_d ∈ [-50, 50]
    # 将 translation 放大 100 倍, 然后相加, 缩小 100 倍写入 translation

# 获取玩家自己设置的物品信息框三个方向偏移量 -> temp1、temp2、temp3
execute on vehicle on passengers if entity @s[type=minecraft:player] run function global_shop:logic/text_display/text_display/set_custom_position/get_player_settings
# 处理上下
scoreboard players set temp glbs_common 55
scoreboard players operation temp glbs_common += temp1 glbs_common
execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get temp glbs_common
# 处理左右
scoreboard players set temp glbs_common 140
scoreboard players operation temp glbs_common += temp2 glbs_common
execute store result entity @s transformation.translation[0] float 0.01 run scoreboard players get temp glbs_common
# 处理前后（因为 z 指向后方，玩家存储的 glbs_st_item_frame_pos_d 为正数时，代表玩家想要将框往前显示，即显示得更远，所以应该做减法）
scoreboard players set temp glbs_common -300
scoreboard players operation temp glbs_common -= temp3 glbs_common
execute store result entity @s transformation.translation[2] float 0.01 run scoreboard players get temp glbs_common