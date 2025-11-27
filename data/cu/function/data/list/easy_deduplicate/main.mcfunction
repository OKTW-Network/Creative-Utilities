scoreboard players set #data.list.easy_deduplicate.FUNCTION_STAGE cu-io 0
data remove storage cu:io data.list.easy_deduplicate.Result
execute unless data storage cu:io data.list.easy_deduplicate.Input[0] run return run function cu:data/list/easy_deduplicate/_return_fail

scoreboard players set #data.list.easy_deduplicate.FUNCTION_STAGE cu-io 1
function cu:data/list/easy_deduplicate/_func/deduplicate

scoreboard players set #data.list.easy_deduplicate.FUNCTION_STAGE cu-io -1
function cu:data/list/easy_deduplicate/_reset_function

return run execute if data storage cu:io data.list.easy_deduplicate.Result[]
