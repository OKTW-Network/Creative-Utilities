execute if score #get.forceGet cu matches 1 run scoreboard players reset @s hitboxXZ
execute unless score @s hitboxXZ matches -2147483648..2147483647 run function cu:library/hitbox/main

execute store result score #get.posX cu run data get entity @s Pos[0] 10
execute store result storage cu:get hitbox_border.X.min int 1 run scoreboard players operation #get.posX cu -= @s hitboxXZ

execute store result score #get.posX cu run data get entity @s Pos[0] 10
execute store result storage cu:get hitbox_border.X.max int 1 run scoreboard players operation #get.posX cu += @s hitboxXZ

scoreboard players set #get.forceGet cu 0
