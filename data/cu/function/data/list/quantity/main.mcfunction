scoreboard players set #data.list.quantity.FUNCTION_STAGE cu-io 0
scoreboard players reset #data.list.quantity.Result cu-io
execute unless data storage cu:io data.list.quantity.Input.data[0] run return run function cu:data/list/quantity/_return_fail
execute unless data storage cu:io data.list.quantity.Input.target run return run function cu:data/list/quantity/_return_fail

scoreboard players set #data.list.quantity.FUNCTION_STAGE cu-io 1
scoreboard players set #data.list.quantity.Result cu-io 0
function cu:data/list/quantity/_func

scoreboard players set #data.list.quantity.FUNCTION_STAGE cu-io -1
function cu:data/list/quantity/_reset_function

return run execute unless score #data.list.quantity.Result cu-io matches 0 run scoreboard players get #data.list.quantity.Result cu-io
