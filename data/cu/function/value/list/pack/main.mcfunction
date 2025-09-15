scoreboard players set #value.list.pack.FUNCTION_STAGE cu-io 0
data remove storage cu:io value.list.pack.Result
execute unless data storage cu:io value.list.pack.Input run return run function cu:value/list/pack/_return_fail

scoreboard players set #value.list.pack.FUNCTION_STAGE cu-io 1
data modify storage cu:io value.list.pack.Result set value []
data modify storage cu:io value.list.pack.Result append from storage cu:io value.list.pack.Input

scoreboard players set #value.list.pack.FUNCTION_STAGE cu-io -1
function cu:value/list/pack/_reset_function

return run execute if data storage cu:io value.list.pack.Result
