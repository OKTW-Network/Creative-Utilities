scoreboard players set #data.list.contains.FUNCTION_STAGE cu-io 0
scoreboard players reset #data.list.contains.Result cu-io
execute unless data storage cu:io data.list.contains.Input.data[0] run return run function cu:data/list/contains/_return_fail
execute unless data storage cu:io data.list.contains.Input.target run return run function cu:data/list/contains/_return_fail

scoreboard players set #data.list.contains.FUNCTION_STAGE cu-io 1
scoreboard players set #data.list.contains.Result cu-io 0
function cu:data/list/contains/_func

scoreboard players set #data.list.contains.FUNCTION_STAGE cu-io -1
function cu:data/list/contains/_reset_function

return run execute unless score #data.list.contains.Result cu-io matches 0 run scoreboard players get #data.list.contains.Result cu-io
