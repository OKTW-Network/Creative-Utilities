scoreboard players set #data.list.pack.FUNCTION_STAGE cu-io 0
data remove storage cu:io data.list.pack.Result
execute unless data storage cu:io data.list.pack.Input run return run function cu:data/list/pack/_return_fail

scoreboard players set #data.list.pack.FUNCTION_STAGE cu-io 1
data modify storage cu:io data.list.pack.Result set value []
data modify storage cu:io data.list.pack.Result append from storage cu:io data.list.pack.Input

scoreboard players set #data.list.pack.FUNCTION_STAGE cu-io -1
function cu:data/list/pack/_reset_function

return run execute if data storage cu:io data.list.pack.Result
