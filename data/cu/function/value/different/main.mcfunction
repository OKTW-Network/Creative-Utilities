scoreboard players set #value.different.FUNCTION_STAGE cu-io 0
scoreboard players reset #value.different.Result cu-io
execute unless data storage cu:io value.different.Input.1 unless data storage cu:io value.different.Input.2 run return run function cu:value/different/_return_fail

scoreboard players set #value.different.FUNCTION_STAGE cu-io 1
execute store success score #value.different.Result cu-io run data modify storage cu:io value.different.Input.1 set from storage cu:io value.different.Input.2

scoreboard players set #value.different.FUNCTION_STAGE cu-io -1
function cu:value/different/_reset_function

return run execute unless score #value.different.Result cu-io matches 0 run scoreboard players get #value.different.Result cu-io
