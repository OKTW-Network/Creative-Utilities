scoreboard players set #1 temp 1000
execute store result score #2 temp run data get entity @s ActiveEffects[{Id:11}].Amplifier
scoreboard players add #2 temp 1
scoreboard players set #3 temp 200
scoreboard players operation #3 temp *= #2 temp
scoreboard players operation #1 temp -= #3 temp
scoreboard players operation #entity.damage.victim._damageTaken1000 cu *= #1 temp
scoreboard players operation #entity.damage.victim._damageTaken1000 cu /= #1000 num
