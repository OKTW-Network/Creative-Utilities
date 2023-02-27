execute store result score #value.object.match.result cu run data modify storage cu:value object.match.source merge from storage cu:value object.match.input

execute if score #value.object.match.result cu matches 0 unless data storage cu:value object.match.source run scoreboard players set #value.object.match.result cu -1
execute if score #value.object.match.result cu matches 0 unless data storage cu:value object.match.input run scoreboard players set #value.object.match.result cu -1
execute if score #value.object.match.result cu matches 0..1 run scoreboard players operation #value.digit.boolean_reverse.input cu = #value.object.match.result cu
execute if score #value.object.match.result cu matches 0..1 run function cu:value/digit/boolean_reverse
execute if score #value.object.match.result cu matches 0..1 run scoreboard players operation #value.object.match.result cu = #value.digit.boolean_reverse.result cu

data remove storage cu:value object.match.source
data remove storage cu:value object.match.input
