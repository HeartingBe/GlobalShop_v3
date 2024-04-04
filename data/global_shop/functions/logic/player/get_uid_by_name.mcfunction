# @param global_shop:common admin_input 玩家名字
# @param playerUid 出参，0 代表玩家还没注册（或者命令执行出错），>= 1 代表该玩家的 uid

scoreboard players set playerUid glbs_common 0

data remove storage global_shop:common temp
data modify storage global_shop:common temp.name set from storage global_shop:common admin_input
function global_shop:logic/player/get_uid_by_name/macro_get with storage global_shop:common temp