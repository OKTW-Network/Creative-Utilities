execute if score #get.forceGet cu matches 1 run scoreboard players reset @s hitboxY
execute unless score @s hitboxY matches -2147483648..2147483647 run function cu:library/hitbox/main

execute store result storage cu:get hitbox_border.Y.min int 1 run data get entity @s Pos[1] 10

execute store result score #get.posY cu run data get entity @s Pos[1] 10
execute store result storage cu:get hitbox_border.Y.max int 1 run scoreboard players operation #get.posY cu += @s hitboxY

scoreboard players set #get.forceGet cu 0
