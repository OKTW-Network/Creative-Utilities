execute store result score #size hitboxSpecial run data get entity @s Size
scoreboard players add #size hitboxSpecial 1
scoreboard players set @s hitboxXZ 3
scoreboard players set @s hitboxY 5
scoreboard players operation @s hitboxXZ *= #size hitboxSpecial
scoreboard players operation @s hitboxY *= #size hitboxSpecial
