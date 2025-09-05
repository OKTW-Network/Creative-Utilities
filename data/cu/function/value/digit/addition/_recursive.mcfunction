execute store result score #value.digit.addition._num cu run data get storage cu:value digit.addition.input[0]
scoreboard players operation #value.digit.addition.result cu += #value.digit.addition._num cu
data remove storage cu:value digit.addition.input[0]
execute if data storage cu:value digit.addition.input[0] run function cu:value/digit/addition/_recursive
