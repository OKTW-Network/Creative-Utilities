scoreboard players set #data.different.FUNCTION_STAGE cu-io 0
scoreboard players reset #data.different.Result cu-io

scoreboard players set #data.different.FUNCTION_STAGE cu-io 1
scoreboard players set #1 temp 0
execute if data storage cu:io data.different.Input.1 run scoreboard players add #1 temp 1
execute if data storage cu:io data.different.Input.2 run scoreboard players add #1 temp 1
execute if score #1 temp matches 0 run return run function cu:data/different/_return_fail
execute if score #1 temp matches 1 run scoreboard players set #data.different.Result cu-io 1
execute if score #1 temp matches 2 store success score #data.different.Result cu-io run data modify storage cu:io data.different.Input.1 set from storage cu:io data.different.Input.2

scoreboard players set #data.different.FUNCTION_STAGE cu-io -1
function cu:data/different/_reset_function

return run execute unless score #data.different.Result cu-io matches 0 run scoreboard players get #data.different.Result cu-io
