# @macro {id: string, Count: byte, tag: NbtCompound}
# @executor Player
# @other macro.tag 如果是空复合标签, 会被上一步还原物品数据时填为空字符串 "", 适应此处 tag 为空的情况

# log
#$say /give @s $(id)$(tag) $(Count)

$give @s $(id)$(tag) $(Count)