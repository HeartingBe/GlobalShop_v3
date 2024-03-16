# 重置玩家相关记分板
function global_shop:logic/player/init_scoreboard

tellraw @s ["\u00a7e商店已关闭, 欢迎再次光临"]

# 音效 退出
function global_shop:sound/exit

ride @s dismount