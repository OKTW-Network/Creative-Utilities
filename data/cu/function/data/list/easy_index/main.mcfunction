scoreboard players set #data.list.easy_index.FUNCTION_STAGE cu-io 0
data remove storage cu:io data.list.easy_index.Result
execute unless data storage cu:io data.list.easy_index.Input[0] run return run function cu:data/list/easy_index/_return_fail
execute unless score #data.list.easy_index.Option.index cu-io matches -2147483639..2147483638 run scoreboard players set #data.list.easy_index.Option.index cu-io 0

scoreboard players set #data.list.easy_index.FUNCTION_STAGE cu-io 1
data modify storage cu:internal dummy set value {index:0}
execute store result storage cu:internal dummy.index int 1 run scoreboard players get #data.list.easy_index.Option.index cu-io
function cu:data/list/easy_index/_func with storage cu:internal dummy

scoreboard players set #data.list.easy_index.FUNCTION_STAGE cu-io -1
function cu:data/list/easy_index/_reset_function

return run execute if data storage cu:io data.list.easy_index.Result
