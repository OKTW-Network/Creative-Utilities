scoreboard players reset #data.digit.addition.Result cu-io

execute store result score #data.digit.addition.Result cu-io run data get storage cu:io data.digit.addition.Input[0]
data remove storage cu:io data.digit.addition.Input[0]
execute if data storage cu:io data.digit.addition.Input[0] run function cu:data/digit/addition/_func

data remove storage cu:io data.digit.addition.Input

return run execute unless score #data.digit.addition.Result cu-io matches 0 run scoreboard players get #data.digit.addition.Result cu-io
