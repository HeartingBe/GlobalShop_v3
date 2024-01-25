execute on passengers if entity @s[type=minecraft:player] store result score temp glbs_common run data get entity @s Rotation[1]

execute if score temp glbs_common matches -18..-7 run return 12

execute if score temp glbs_common matches -6..6 run return 13

execute if score temp glbs_common matches 7..18 run return 14

return -1