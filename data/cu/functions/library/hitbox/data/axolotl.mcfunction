execute store result score #age hitboxSpecial run data get entity @s Age
execute if score #age hitboxSpecial matches 0.. run scoreboard players set @s hitboxXZ 4
execute if score #age hitboxSpecial matches 0.. run scoreboard players set @s hitboxY 6
execute if score #age hitboxSpecial matches ..-1 run scoreboard players set @s hitboxXZ 2
execute if score #age hitboxSpecial matches ..-1 run scoreboard players set @s hitboxY 2
