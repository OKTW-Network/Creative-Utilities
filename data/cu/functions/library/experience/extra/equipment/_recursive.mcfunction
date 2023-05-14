scoreboard players set #random.precision math 3
scoreboard players set #random.allowNegative math 0
function math:random/generate
scoreboard players set #1 temp 3
scoreboard players operation #1 temp *= #random.result math
scoreboard players operation #1 temp /= #1000 num
scoreboard players add #1 temp 1
scoreboard players operation #library.experience.extra.result cu += #1 temp

scoreboard players remove #library.experience.extra._recursiveTimes cu 1

execute if score #library.experience.extra._recursiveTimes cu matches 1.. run function cu:library/experience/extra/equipment/_recursive
