scoreboard players set #data.list.easy_index.FUNCTION_STAGE cu-io 0
data remove storage cu:io data.list.easy_index.Result
execute unless data storage cu:io data.list.easy_index.Input[0] run return run function cu:data/list/easy_index/_return_fail
execute unless score #data.list.easy_index.Option.index cu-io matches -2147483639..2147483638 run scoreboard players set #data.list.easy_index.Option.index cu-io 0

scoreboard players set #data.list.easy_index.FUNCTION_STAGE cu-io 1
data modify storage cu:internal dummy set value {namespace:"cu:io",path:"data.list.easy_index.Input"}
execute store result storage cu:internal dummy.index int 1 run scoreboard players get #data.list.easy_index.Option.index cu-io
execute store success score #1 temp run function cu:data/list/lazy_index_storage with storage cu:internal dummy
execute if score #1 temp matches 1.. run data modify storage cu:io data.list.easy_index.Result set from storage cu:io data.list.lazy_index_storage.Result

scoreboard players set #data.list.easy_index.FUNCTION_STAGE cu-io -1
function cu:data/list/easy_index/_reset_function

return run execute if data storage cu:io data.list.easy_index.Result
