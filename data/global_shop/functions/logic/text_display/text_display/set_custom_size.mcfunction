# @executor TextDisplay

# 默认值：
# transformation:{scale:[0.7f,0.7f,0.7f]}
# transformation 变换
   # scale 以原点为中心缩放模型

# 处理 scale, 其中 glbs_st_item_frame_size ∈ [-50, 50], 将 scale 放大 100 倍, 然后与 glbs_st_item_frame_size 相加, 缩小 100 倍写入 scale
scoreboard players set temp glbs_common 70
execute on vehicle on passengers if entity @s[type=minecraft:player] run scoreboard players operation temp glbs_common += @s glbs_st_item_frame_size
execute store result entity @s transformation.scale[0] float 0.01 run scoreboard players get temp glbs_common
execute store result entity @s transformation.scale[1] float 0.01 run scoreboard players get temp glbs_common
execute store result entity @s transformation.scale[2] float 0.01 run scoreboard players get temp glbs_common