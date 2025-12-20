scoreboard players set #data.string.easy_join.FUNCTION_STAGE cu-io 0
data remove storage cu:io data.string.easy_join.Result
execute unless data storage cu:io data.string.easy_join.Input[] run return run function cu:data/string/easy_join/_return_fail
data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io data.string.easy_join.Option.separator
data modify storage cu:io data.string.easy_join.Option.separator set from storage cu:internal dummy

scoreboard players set #data.string.easy_join.FUNCTION_STAGE cu-io 1
data modify storage cu:internal dummy set value {string1:'',string2:'',string3:''}
data modify storage cu:internal dummy.string1 set from storage cu:io data.string.easy_join.Input[0]
data remove storage cu:io data.string.easy_join.Input[0]
scoreboard players set #1 temp 0
execute store success score #1 temp run function cu:data/string/lazy_join3 with storage cu:internal dummy
execute unless score #1 temp matches 0 run data modify storage cu:io data.string.easy_join.Result set from storage cu:io data.string.lazy_join3.Result
execute if data storage cu:io data.string.easy_join.Input[0] run function cu:data/string/easy_join/_func

scoreboard players set #data.string.easy_join.FUNCTION_STAGE cu-io -1
function cu:data/string/easy_join/_reset_function

return run execute if data storage cu:io data.string.easy_join.Result unless data storage cu:io data.string.easy_join{Result:''}