scoreboard players set #data.list.find.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input, no matches, or error.
#  []     : The index(es) of matches.
data remove storage cu:io data.list.find.Result
execute unless data storage cu:io data.list.find.Input.data[0] run return run function cu:data/list/find/_return_fail
execute unless data storage cu:io data.list.find.Input.target run return run function cu:data/list/find/_return_fail
# Option.count
#  0   : Compares the whole input.
#  1.. : Specify the least number of matches.
execute unless score #data.list.find.Option.count cu-io matches 0.. run scoreboard players set #data.list.find.Option.count cu-io 0

scoreboard players set #data.list.find.FUNCTION_STAGE cu-io 1
scoreboard players set #data.list.find.counter cu-internal 0
scoreboard players set #data.list.find.success_count cu-internal 0
function cu:data/list/find/_func

scoreboard players set #data.list.find.FUNCTION_STAGE cu-io -1
function cu:data/list/find/_reset_function

return run execute if data storage cu:io data.list.find.Result[]
