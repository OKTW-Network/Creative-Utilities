scoreboard players add #value.digit.length.result cu 1
scoreboard players set #1 temp 10
scoreboard players operation #value.digit.length.input cu /= #1 temp

execute if score #value.digit.length.input cu matches 1.. run function cu:value/digit/length/_recursive
