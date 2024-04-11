# @param global_shop:common admin_input 玩家输入
# @executor Admin

# 未输入
execute store result score temp glbs_common run data get storage global_shop:common admin_input
execute if score temp glbs_common matches 0 run return run function global_shop:settings_/try_modify_language/no_input

# 不允许输入空格
execute store result score hasSpace glbs_common run function global_shop:logic/inputter/is_space_in_input
execute if score hasSpace glbs_common matches 1 run return run function global_shop:logic/inputter/tip_cannot_input_space

# 检查语言文件是否存在
    # 经尝试，对于 execute store result score A run function xxx
    # 如果函数执行失败（函数不存在、函数宏实例化失败）会使 A 置 0
    # 如果函数没有 return 命令，执行成功也会使 A 置 0
    # 所以语言文件中最后一个命令应该返回非 0 来判断
data remove storage global_shop:common temp
data modify storage global_shop:common temp.input set from storage global_shop:common admin_input
function global_shop:settings_/try_modify_language/macro_set_lang with storage global_shop:common temp

data remove storage global_shop:common admin_input