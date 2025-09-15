scoreboard players set #value.list.duplicate.FUNCTION_STAGE cu-io 0
data remove storage cu:io value.list.duplicate.Result
execute unless data storage cu:io value.list.duplicate.Input run return run function cu:value/list/duplicate/_return_fail
execute unless score #value.list.duplicate.Option.count cu-io matches 1..2147483639 run scoreboard players set #value.list.duplicate.Option.count cu-io 1

scoreboard players set #value.list.duplicate.FUNCTION_STAGE cu-io 1
scoreboard players operation #value.list.duplicate.recur_countdown cu-internal = #value.list.duplicate.Option.count cu-io
function cu:value/list/duplicate/_func

scoreboard players set #value.list.duplicate.FUNCTION_STAGE cu-io -1
function cu:value/list/duplicate/_reset_function

return run execute if data storage cu:io value.list.duplicate.Result
