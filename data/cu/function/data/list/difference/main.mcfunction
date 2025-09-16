scoreboard players set #data.list.difference.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input or error.
#  []     : The result.
#            {index:0..2147483638} : The index of this item in the list.
#            {diff:0..3}           : The difference in this item.
#                                     0 : Inputs identical.
#                                     1 : Inputs are different.
#                                     2 : Excess from <Input.1>.
#                                     3 : Excess from <Input.2>.
#            {value:[]}            : When diff is 1, the values from <Input.1> and <Input.2>.
#            {value:<value>}       : When diff is 0, 2, or 3, the value of <Input.1> or <Input.2>.
data remove storage cu:io data.list.difference.Result
execute unless data storage cu:io data.list.difference.Input.1[] run return run function cu:data/list/difference/_return_fail
execute unless data storage cu:io data.list.difference.Input.2[] run return run function cu:data/list/difference/_return_fail

scoreboard players set #data.list.difference.FUNCTION_STAGE cu-io 1
execute store result score #1 temp if data storage cu:io data.list.difference.Input.1[]
execute store result score #2 temp if data storage cu:io data.list.difference.Input.2[]
execute if score #1 temp < #2 temp run scoreboard players operation #1 temp >< #2 temp
scoreboard players operation #data.list.difference.recur_countdown cu-internal = #1 temp
scoreboard players set #data.list.difference.index cu-internal 0
function cu:data/list/difference/_func/difference

scoreboard players set #data.list.difference.FUNCTION_STAGE cu-io -1
function cu:data/list/difference/_reset_function

return run execute if data storage cu:io data.list.difference.Result
