scoreboard players set #value.list.reverse.FUNCTION_STAGE cu-io 0
data remove storage cu:io value.list.reverse.Result
execute unless data storage cu:io value.list.reverse.Input[0] run return run function cu:value/list/reverse/_return_fail

scoreboard players set #value.list.reverse.FUNCTION_STAGE cu-io 1
function cu:value/list/reverse/_func

scoreboard players set #value.list.reverse.FUNCTION_STAGE cu-io -1
data remove storage cu:io value.list.reverse.Input

return run execute if data storage cu:io value.list.reverse.Result
