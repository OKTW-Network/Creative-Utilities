scoreboard players set #value.list.quantity.FUNCTION_STAGE cu-io 0
scoreboard players reset #value.list.quantity.Result cu-io
execute unless data storage cu:io value.list.quantity.Input.data[0] run return run function cu:value/list/quantity/_return_fail
execute unless data storage cu:io value.list.quantity.Input.target run return run function cu:value/list/quantity/_return_fail

scoreboard players set #value.list.quantity.FUNCTION_STAGE cu-io 1
scoreboard players set #value.list.quantity.Result cu-io 0
function cu:value/list/quantity/_func

scoreboard players set #value.list.quantity.FUNCTION_STAGE cu-io -1
function cu:value/list/quantity/_reset_function

return run execute unless score #value.list.quantity.Result cu-io matches 0 run scoreboard players get #value.list.quantity.Result cu-io
