# Reminder
#  Returned value is not as precise as the result value.
scoreboard players set #data.digit.easy_float_multiplication.FUNCTION_STAGE cu-io 0
data remove storage cu:io data.digit.easy_float_multiplication.Result
execute unless data storage cu:io data.digit.easy_float_multiplication.Input[1] run return run function cu:data/digit/easy_float_multiplication/_return_fail

scoreboard players set #data.digit.easy_float_multiplication.FUNCTION_STAGE cu-io 1
data modify storage cu:internal data.digit.easy_float_multiplication.product set from storage cu:io data.digit.easy_float_multiplication.Input[0]
data remove storage cu:io data.digit.easy_float_multiplication.Input[0]
execute unless function cu:data/digit/easy_float_multiplication/_func run return run function cu:data/digit/easy_float_multiplication/_return_fail
data modify storage cu:io data.digit.easy_float_multiplication.Result set from storage cu:internal data.digit.easy_float_multiplication.product

scoreboard players set #data.digit.easy_float_multiplication.FUNCTION_STAGE cu-io -1
function cu:data/digit/easy_float_multiplication/_reset_function

return run data get storage cu:io data.digit.easy_float_multiplication.Result
