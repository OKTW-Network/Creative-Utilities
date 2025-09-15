scoreboard players set #value.list.contains.FUNCTION_STAGE cu-io 0
scoreboard players reset #value.list.contains.Result cu-io
execute unless data storage cu:io value.list.contains.Input.data[0] run return run function cu:value/list/contains/_return_fail
execute unless data storage cu:io value.list.contains.Input.target run return run function cu:value/list/contains/_return_fail

scoreboard players set #value.list.contains.FUNCTION_STAGE cu-io 1
scoreboard players set #value.list.contains.Result cu-io 0
function cu:value/list/contains/_func

scoreboard players set #value.list.contains.FUNCTION_STAGE cu-io -1
function cu:value/list/contains/_reset_function

return run execute unless score #value.list.contains.Result cu-io matches 0 run scoreboard players get #value.list.contains.Result cu-io
