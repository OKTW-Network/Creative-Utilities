scoreboard players set #random.precision math 3
scoreboard players set #random.allowNegative math 0
function math:random/generate
scoreboard players operation #2 calcu_temp = #random.result math
scoreboard players set #1 calcu_temp 3
scoreboard players operation #1 calcu_temp *= #2 calcu_temp
scoreboard players operation #1 calcu_temp /= #1000 num
scoreboard players add #1 calcu_temp 1
scoreboard players operation #result expExtra += #1 calcu_temp

scoreboard players remove #armorQuantity expExtra 1

execute if score #armorQuantity expExtra matches 1.. run function cu:library/experience/extra-armor
