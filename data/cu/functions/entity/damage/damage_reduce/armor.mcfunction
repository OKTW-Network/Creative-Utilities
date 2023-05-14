execute store result score #1 temp run attribute @s generic.armor get 1000
execute store result score #2 temp run attribute @s generic.armor_toughness get 1000

scoreboard players operation #3 temp = #1 temp
scoreboard players set #4 temp 5000
scoreboard players operation #3 temp /= #4 temp

scoreboard players set #4 temp 4
scoreboard players operation #4 temp *= #entity.damage.source.damageValue1000 cu
scoreboard players set #5 temp 8000
scoreboard players operation #5 temp += #2 temp
scoreboard players operation #4 temp /= #5 temp
scoreboard players operation #4 temp -= #1 temp
scoreboard players operation #4 temp *= #-1 num

scoreboard players operation #3 temp > #4 temp
scoreboard players set #4 temp 20000
scoreboard players operation #3 temp < #4 temp
scoreboard players set #4 temp 25000
scoreboard players operation #3 temp /= #25 num
scoreboard players remove #3 temp 1000
scoreboard players operation #3 temp *= #-1 num
scoreboard players operation #entity.damage.victim._damageTaken1000 cu *= #3 temp
scoreboard players operation #entity.damage.victim._damageTaken1000 cu /= #1000 num
