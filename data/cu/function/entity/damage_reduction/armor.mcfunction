execute store result score #1 temp store result score #2 temp run attribute @s minecraft:armor get 100
execute store result score #3 temp run attribute @s minecraft:armor_toughness get 100
scoreboard players operation #4 temp = #entity.damage_reduction.damage cu
scoreboard players operation #4 temp *= #100 num

scoreboard players operation #1 temp /= #5 num

scoreboard players operation #4 temp *= #4 num
scoreboard players add #3 temp 800
scoreboard players operation #4 temp /= #3 temp
scoreboard players operation #2 temp -= #4 temp

scoreboard players operation #1 temp > #2 temp

scoreboard players set #2 temp 2000
scoreboard players operation #1 temp < #2 temp
scoreboard players operation #1 temp /= #25 num

scoreboard players set #2 temp 100
scoreboard players operation #2 temp -= #entity.damage_reduction.ignoreArmorPercent cu
execute store result score #2 temp run scoreboard players operation #1 temp *= #2 temp
scoreboard players operation #1 temp /= #100 num

scoreboard players remove #1 temp 100
scoreboard players operation #1 temp *= #-1 num
scoreboard players operation #entity.damage_reduction.damage cu *= #1 temp
scoreboard players operation #entity.damage_reduction.damage cu /= #100 num
