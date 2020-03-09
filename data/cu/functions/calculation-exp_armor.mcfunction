scoreboard players set #random_max random 3
function math:random
execute store result score #calculation_temp6 numeric run data get storage math:resources random.result
scoreboard players add #calculation_temp6 numeric 1
scoreboard players operation #calculation_temp3 numeric += #calculation_temp6 numeric

scoreboard players remove #calculation_temp5 numeric 1

execute if score #calculation_temp5 numeric matches 1.. run function cu:calculation-exp_armor
