scoreboard players set #data.list.duplicate.FUNCTION_STAGE cu-io 0
data remove storage cu:io data.list.duplicate.Result
execute unless data storage cu:io data.list.duplicate.Input run return run function cu:data/list/duplicate/_return_fail
execute unless score #data.list.duplicate.Option.count cu-io matches 1..2147483639 run scoreboard players set #data.list.duplicate.Option.count cu-io 1

scoreboard players set #data.list.duplicate.FUNCTION_STAGE cu-io 1
scoreboard players operation #data.list.duplicate.recur_countdown cu-internal = #data.list.duplicate.Option.count cu-io
function cu:data/list/duplicate/_func

scoreboard players set #data.list.duplicate.FUNCTION_STAGE cu-io -1
function cu:data/list/duplicate/_reset_function

return run execute if data storage cu:io data.list.duplicate.Result
