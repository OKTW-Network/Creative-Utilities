# Reminder
#  Fails the function when the calculation exceeds the cap -20000000..19999999.
#  Returned value is not as precise as the result value.
scoreboard players set #data.digit.easy_double_addition.FUNCTION_STAGE cu-io 0
data remove storage cu:io data.digit.easy_double_addition.Result
execute unless data storage cu:io data.digit.easy_double_addition.Input[0] run return run function cu:data/digit/easy_double_addition/_return_fail

scoreboard players set #data.digit.easy_double_addition.FUNCTION_STAGE cu-io 1
execute positioned ~ 0 ~ summon marker unless function cu:data/digit/easy_double_addition/_func/marker/main run function cu:data/digit/easy_double_addition/_return_fail

scoreboard players set #data.digit.easy_double_addition.FUNCTION_STAGE cu-io -1
function cu:data/digit/easy_double_addition/_reset_function

return run data get storage cu:io data.digit.easy_double_addition.Result
