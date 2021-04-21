execute if score #force-get cu.get matches 1 run scoreboard players reset @s hitboxY
execute unless score @s hitboxY matches -2147483648..2147483647 run function cu:library/hitbox/main

execute store result storage cu:get hitbox_border.Y.min int 1 run data get entity @s Pos[1] 10

execute store result score #pos1 cu.get run data get entity @s Pos[1] 10
execute store result storage cu:get hitbox_border.Y.max int 1 run scoreboard players operation #pos1 cu.get += @s hitboxY

scoreboard players set #force-get cu.get 0
