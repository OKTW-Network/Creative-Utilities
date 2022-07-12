execute if score #get.forceGet cu matches 1 run scoreboard players reset @s hitboxXZ
execute unless score @s hitboxXZ matches -2147483648..2147483647 run function cu:library/hitbox/main

execute store result score #get.posZ cu run data get entity @s Pos[2] 10
execute store result storage cu:get hitbox_border.Z.min int 1 run scoreboard players operation #get.posZ cu -= @s hitboxXZ

execute store result score #get.posZ cu run data get entity @s Pos[2] 10
execute store result storage cu:get hitbox_border.Z.max int 1 run scoreboard players operation #get.posZ cu += @s hitboxXZ

scoreboard players set #get.forceGet cu 0
