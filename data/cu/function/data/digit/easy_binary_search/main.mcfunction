# Reminder
#  This function does not sort or check the input.
#  The input list must be sorted first.
#  Will not resolve repeated values.
scoreboard players set #data.digit.easy_binary_search.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input, no matches, or error.
#  {...}  : The result.
#            {exceed:0..2}         : The exceed condition.
#                                     0 : Did not exceed.
#                                     1 : Exceeds the head.
#                                     2 : Exceeds the tail.
#            {index:0..2147483638} : The index of the result.
#            {value:<value>}       : The value of the result.
data remove storage cu:io data.digit.easy_binary_search.Result
execute unless data storage cu:io data.digit.easy_binary_search.Input.source[0] run return run function cu:data/digit/easy_binary_search/_return_fail
execute unless score #data.digit.easy_binary_search.Input.target cu-io matches -2147483648..2147483647 run return run function cu:data/digit/easy_binary_search/_return_fail
# Option.vague
#  0 : Exact
#       source [1,3], target 2 => (no result)
#  1 : Lower bound (left, <= target)
#       source [1,3], target 2 => index 0, value 1
#  2 : Upper bound (right, >= target)
#       source [1,3], target 2 => index 1, value 3
#  3 : Nearest value, prefer lower (left).
#       source [2,6], target 3 => index 0, value 2
#       source [2,6], target 4 => index 0, value 2
#       source [2,6], target 5 => index 1, value 6
#  4 : Nearest value, prefer upper (right).
#       source [2,6], target 3 => index 0, value 2
#       source [2,6], target 4 => index 1, value 6
#       source [2,6], target 5 => index 1, value 6
execute unless score #data.digit.easy_binary_search.Option.vague cu-io matches 0..4 run scoreboard players set #data.digit.easy_binary_search.Option.vague cu-io 0

scoreboard players set #data.digit.easy_binary_search.FUNCTION_STAGE cu-io 1
function cu:data/digit/easy_binary_search/_func/binary_search/main

scoreboard players set #data.digit.easy_binary_search.FUNCTION_STAGE cu-io -1
function cu:data/digit/easy_binary_search/_reset_function

return run execute if data storage cu:io data.digit.easy_binary_search.Result{exceed:0} if data storage cu:io data.digit.easy_binary_search.Result.index
