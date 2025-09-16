scoreboard players set #data.list.reverse.FUNCTION_STAGE cu-io 0
data remove storage cu:io data.list.reverse.Result
execute unless data storage cu:io data.list.reverse.Input[0] run return run function cu:data/list/reverse/_return_fail

scoreboard players set #data.list.reverse.FUNCTION_STAGE cu-io 1
function cu:data/list/reverse/_func

scoreboard players set #data.list.reverse.FUNCTION_STAGE cu-io -1
data remove storage cu:io data.list.reverse.Input

return run execute if data storage cu:io data.list.reverse.Result
