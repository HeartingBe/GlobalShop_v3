# @executor TextDisplayEntity

# shadow 文本是否显示阴影
data merge entity @s {Tags:["global_shop","glbs_to_set_state_normal"],transformation:{translation:[0.22f,0.0f,-3.8f],scale:[1.1f,1.1f,1.1f]},billboard:"fixed",alignment:"right",text_opacity:-1b,background:0b,brightness:{block:15,sky:15},shadow:true}

# 骑 ItemDisplay
ride @s mount @e[type=minecraft:item_display,tag=glbs_to_carry_text_display,distance=..5,limit=1]

# 旋转，让文本显示在玩家前方
    # 文本的朝向需要和玩家的朝向相反，才能将正面面朝玩家
    # 实际上，只需要保持和物品展示实体相同（因为物品展示实体已经转好了）
    # 调用下面的函数，出参：
        # g_baseRotation 物品展示实体的水平旋转角，但是因为在前面的调用中，g_baseRotation 用于存储 Menu 的旋转角（1. 调用关系是 Menu -> 2. (多次调用)生成 ItemDisplay -> 3. ItemDisplay 显示数量发现没有 TextDisplay -> 4. 调用本函数 -> 回到 2），所以在此处应该先记录原先的 g_baseRotation
        # translation_v 物品展示实体的垂直平移距离(放大 100 倍)

        # 记录原先的 g_baseRotation
        scoreboard players operation g_baseRotation_2 glbs_common = g_baseRotation glbs_common
    execute on vehicle run function global_shop:ui/display_manager/summon_single_item/summon/carry_text_display/summon/get_pos_and_trans
    # 保持和物品展示实体相同旋转角度
    scoreboard players set incre glbs_common 0
    execute store result entity @s Rotation[0] float 1 run function global_shop:utils/cal_horizon_rotation
        # 还原 g_baseRotation
        scoreboard players operation g_baseRotation glbs_common = g_baseRotation_2 glbs_common
    # 向下平移
    scoreboard players remove translation_v glbs_common 36
    execute store result entity @s transformation.translation[1] float 0.01 run scoreboard players get translation_v glbs_common