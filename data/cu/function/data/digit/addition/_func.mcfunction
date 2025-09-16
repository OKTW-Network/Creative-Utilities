scoreboard players reset #1 temp
execute store result score #1 temp run data get storage cu:io data.digit.addition.Input[0]
scoreboard players operation #data.digit.addition.Result cu-io += #1 temp
data remove storage cu:io data.digit.addition.Input[0]
execute if data storage cu:io data.digit.addition.Input[0] run function cu:data/digit/addition/_func
