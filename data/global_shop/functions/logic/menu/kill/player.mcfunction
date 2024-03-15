# 重置玩家相关记分板
function global_shop:logic/player/init_scoreboard

tellraw @s ["\u00a7e商店已关闭, 欢迎下次使用"]

ride @s dismount