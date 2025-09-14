scoreboard players reset #value.digit.addition.Result cu-io

execute store result score #value.digit.addition.Result cu-io run data get storage cu:io value.digit.addition.Input[0]
data remove storage cu:io value.digit.addition.Input[0]
execute if data storage cu:io value.digit.addition.Input[0] run function cu:value/digit/addition/_func

data remove storage cu:io value.digit.addition.Input

return run execute unless score #value.digit.addition.Result cu-io matches 0 run scoreboard players get #value.digit.addition.Result cu-io
