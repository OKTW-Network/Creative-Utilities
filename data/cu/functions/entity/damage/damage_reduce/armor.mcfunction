execute store result score #1 calcu_temp run attribute @s generic.armor get 1000
execute store result score #2 calcu_temp run attribute @s generic.armor_toughness get 1000

scoreboard players operation #3 calcu_temp = #1 calcu_temp
scoreboard players set #4 calcu_temp 5000
scoreboard players operation #3 calcu_temp /= #4 calcu_temp

scoreboard players set #4 calcu_temp 4
scoreboard players operation #4 calcu_temp *= #entity.damage.source.damageValue1000 cu
scoreboard players set #5 calcu_temp 8000
scoreboard players operation #5 calcu_temp += #2 calcu_temp
scoreboard players operation #4 calcu_temp /= #5 calcu_temp
scoreboard players operation #4 calcu_temp -= #1 calcu_temp
scoreboard players operation #4 calcu_temp *= #-1 num

scoreboard players operation #3 calcu_temp > #4 calcu_temp
scoreboard players set #4 calcu_temp 20000
scoreboard players operation #3 calcu_temp < #4 calcu_temp
scoreboard players set #4 calcu_temp 25000
scoreboard players operation #3 calcu_temp /= #25 num
scoreboard players remove #3 calcu_temp 1000
scoreboard players operation #3 calcu_temp *= #-1 num
scoreboard players operation #entity.damage.victim._damageTaken1000 cu *= #3 calcu_temp
scoreboard players operation #entity.damage.victim._damageTaken1000 cu /= #1000 num
