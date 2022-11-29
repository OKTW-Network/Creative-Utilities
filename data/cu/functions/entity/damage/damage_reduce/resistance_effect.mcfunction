scoreboard players set #1 calcu_temp 1000
execute store result score #2 calcu_temp run data get entity @s ActiveEffects[{Id:11}].Amplifier
scoreboard players add #2 calcu_temp 1
scoreboard players set #3 calcu_temp 200
scoreboard players operation #3 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp -= #3 calcu_temp
scoreboard players operation #entity.damage.victim._damageTaken1000 cu *= #1 calcu_temp
scoreboard players operation #entity.damage.victim._damageTaken1000 cu /= #1000 num
