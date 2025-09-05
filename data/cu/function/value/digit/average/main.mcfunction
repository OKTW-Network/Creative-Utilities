scoreboard players reset #value.digit.average.result cu

execute store result score #value.digit.average._count cu if data storage cu:value digit.average.input[]
execute if score #value.digit.average._count cu matches 1.. run function cu:value/digit/average/_calculate

data modify storage cu:value digit.average.input set value []
scoreboard players reset #value.digit.average._count cu
