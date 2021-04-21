execute if score #force-get cu.get matches 1 run scoreboard players reset @s hitboxXZ
execute unless score @s hitboxXZ matches -2147483648..2147483647 run function cu:library/hitbox/main

execute store result score #pos2 cu.get run data get entity @s Pos[2] 10
execute store result storage cu:get hitbox_border.Z.min int 1 run scoreboard players operation #pos2 cu.get -= @s hitboxXZ

execute store result score #pos2 cu.get run data get entity @s Pos[2] 10
execute store result storage cu:get hitbox_border.Z.max int 1 run scoreboard players operation #pos2 cu.get += @s hitboxXZ

scoreboard players set #force-get cu.get 0
