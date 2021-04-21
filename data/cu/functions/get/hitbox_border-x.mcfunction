execute if score #force-get cu.get matches 1 run scoreboard players reset @s hitboxXZ
execute unless score @s hitboxXZ matches -2147483648..2147483647 run function cu:library/hitbox/main

execute store result score #pos0 cu.get run data get entity @s Pos[0] 10
execute store result storage cu:get hitbox_border.X.min int 1 run scoreboard players operation #pos0 cu.get -= @s hitboxXZ

execute store result score #pos0 cu.get run data get entity @s Pos[0] 10
execute store result storage cu:get hitbox_border.X.max int 1 run scoreboard players operation #pos0 cu.get += @s hitboxXZ

scoreboard players set #force-get cu.get 0
