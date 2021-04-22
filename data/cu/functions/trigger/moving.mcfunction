execute store result score @s movingPos0N run data get entity @s Pos[0] 10
execute store result score @s movingPos1N run data get entity @s Pos[1] 10
execute store result score @s movingPos2N run data get entity @s Pos[2] 10

execute if entity @s[tag=cu.moving] if score @s movingPos0N = @s movingPos0L if score @s movingPos1N = @s movingPos1L if score @s movingPos2N = @s movingPos2L run tag @s add cu.movingEnd
tag @s[tag=cu.movingEnd,tag=cu.moving] remove cu.moving
execute if entity @s[tag=cu.movingEnd] run function #minecraft:moving-end
tag @s[tag=cu.movingEnd] remove cu.movingEnd

execute if entity @s[tag=!cu.moving] unless score @s movingPos0N = @s movingPos0L run tag @s add cu.movingStart
execute if entity @s[tag=!cu.moving] unless score @s movingPos1N = @s movingPos1L run tag @s add cu.movingStart
execute if entity @s[tag=!cu.moving] unless score @s movingPos2N = @s movingPos2L run tag @s add cu.movingStart
tag @s[tag=cu.movingStart,tag=!cu.moving] add cu.moving
execute if entity @s[tag=cu.movingStart] run function #minecraft:moving-start
tag @s[tag=cu.movingStart] remove cu.movingStart

scoreboard players operation @s movingPos0L = @s movingPos0N
scoreboard players operation @s movingPos1L = @s movingPos1N
scoreboard players operation @s movingPos2L = @s movingPos2N
