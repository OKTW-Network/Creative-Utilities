scoreboard players set #data.digit.addition.FUNCTION_STAGE cu-io 0
scoreboard players reset #data.digit.addition.Result cu-io
execute unless data storage cu:io data.digit.addition.Input[0] run return run function cu:data/digit/addition/_return_fail

scoreboard players set #data.digit.addition.FUNCTION_STAGE cu-io 1
scoreboard players set #data.digit.addition.Result cu-io 0
function cu:data/digit/addition/_func

scoreboard players set #data.digit.addition.FUNCTION_STAGE cu-io -1
function cu:data/digit/addition/_reset_function

return run scoreboard players get #data.digit.addition.Result cu-io
