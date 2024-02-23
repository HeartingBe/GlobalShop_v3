#> global_shop:debug/load
#
# 加载函数。用于debug mode

#debug mode用的常量，和正常运行加以区分
scoreboard objectives add glbs_debug_const dummy
    #define score_holder Debug.g_isEnable 是否启用debug mode
    execute unless score Debug.g_isEnable glbs_debug_const matches -2147483648..2147483647 run scoreboard players set Debug.g_isEnable glbs_debug_const 0

#debug mode是否启用
execute if score Debug.g_isEnable glbs_debug_const matches 1.. run function global_shop:debug/init