# 如果玩家旋转角度过大，看向了刚生成的物品，则不在此处变大，而是和其它刚生成的物品一样延迟变大（仍添加标签）
data merge entity @s[tag=!glbs_to_set_state_normal] {start_interpolation:0,interpolation_duration:5,transformation:{scale:[0.8f,0.8f,0.8f]},Glowing:1b}

tag @s add glbs_item_highlight