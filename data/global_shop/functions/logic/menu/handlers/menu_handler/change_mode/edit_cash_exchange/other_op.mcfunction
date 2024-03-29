# @executor Player

tellraw @s [{"text":"无法进入货币编辑界面, 因为有其他管理员在编辑货币","color":"red"},"\n",{"text":"同时只允许一个管理员编辑货币","color":"red"}]
function global_shop:sound/fail