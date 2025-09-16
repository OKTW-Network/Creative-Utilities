scoreboard players set #data.different.FUNCTION_STAGE cu-io 0
scoreboard players reset #data.different.Result cu-io
execute unless data storage cu:io data.different.Input.1 unless data storage cu:io data.different.Input.2 run return run function cu:data/different/_return_fail

scoreboard players set #data.different.FUNCTION_STAGE cu-io 1
execute store success score #data.different.Result cu-io run data modify storage cu:io data.different.Input.1 set from storage cu:io data.different.Input.2

scoreboard players set #data.different.FUNCTION_STAGE cu-io -1
function cu:data/different/_reset_function

return run execute unless score #data.different.Result cu-io matches 0 run scoreboard players get #data.different.Result cu-io
