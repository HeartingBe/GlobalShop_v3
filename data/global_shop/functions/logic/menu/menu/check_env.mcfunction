# @brief 检查玩家是否已经打开商店、是否不在原版三个维度
# @executor Player
# @return 0 - 成功; 1 - 失败

# 环境非法
    # 重复打开
    execute on vehicle if entity @s[type=minecraft:block_display,tag=global_shop] on passengers if entity @s[type=minecraft:player] run return run function global_shop:logic/menu/menu/check_env/duplicate_open
    # 非法维度
    execute unless predicate global_shop:in_vanilla_dimension run return run function global_shop:logic/menu/menu/check_env/invalid_dimension

# ok
return 0