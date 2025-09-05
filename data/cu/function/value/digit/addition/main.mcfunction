scoreboard players reset #value.digit.addition.result cu

execute store result score #value.digit.addition.result cu run data get storage cu:value digit.addition.input[0]
data remove storage cu:value digit.addition.input[0]
execute if data storage cu:value digit.addition.input[0] run function cu:value/digit/addition/_recursive

data remove storage cu:value digit.addition.input
scoreboard players reset #value.digit.addition._num cu
