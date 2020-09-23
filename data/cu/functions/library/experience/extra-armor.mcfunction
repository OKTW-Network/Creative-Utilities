scoreboard players set #max random 3
scoreboard players set #allowNegative random 0
function math:random
execute store result score #2 calcu_temp1 run data get storage math:resources random.result
scoreboard players add #2 calcu_temp1 1
scoreboard players operation #3 calcu_temp += #2 calcu_temp1

scoreboard players remove #1 calcu_temp1 1

execute if score #1 calcu_temp1 matches 1.. run function cu:library/experience/extra-armor
