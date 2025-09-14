scoreboard players reset #1 temp
execute store result score #1 temp run data get storage cu:io value.digit.addition.Input[0]
scoreboard players operation #value.digit.addition.Result cu-io += #1 temp
data remove storage cu:io value.digit.addition.Input[0]
execute if data storage cu:io value.digit.addition.Input[0] run function cu:value/digit/addition/_func
