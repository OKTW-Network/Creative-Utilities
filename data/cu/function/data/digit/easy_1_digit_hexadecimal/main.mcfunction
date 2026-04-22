# Reminder
#  Results string.
#  Returns successful instead of the result.
scoreboard players set #data.digit.easy_1_digit_hexadecimal.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input or error.
#  ""     : The result.
data remove storage cu:io data.digit.easy_1_digit_hexadecimal.Result
execute unless score #data.digit.easy_1_digit_hexadecimal.Input cu-io matches -2147483648..2147483647 run return run function cu:data/digit/easy_1_digit_hexadecimal/_return_fail
# Option.pre_process
#  0 : Do not apply this option. (Validate)
#  1 : Limit
#  2 : Remainder
execute unless score #data.digit.easy_1_digit_hexadecimal.Option.pre_process cu-io matches 0..2 run scoreboard players set #data.digit.easy_1_digit_hexadecimal.Option.pre_process cu-io 0

scoreboard players set #data.digit.easy_1_digit_hexadecimal.FUNCTION_STAGE cu-io 1
execute unless function cu:data/digit/easy_1_digit_hexadecimal/_func/pre_process run return run function cu:data/digit/easy_1_digit_hexadecimal/_return_fail

scoreboard players set #data.digit.easy_1_digit_hexadecimal.FUNCTION_STAGE cu-io 2
data modify storage cu:internal dummy set value {value:'INVALID'}
execute store result storage cu:internal dummy.value int 1 run scoreboard players get #data.digit.easy_1_digit_hexadecimal.Input cu-io
function cu:data/digit/lazy_1_digit_hexadecimal with storage cu:internal dummy
data modify storage cu:io data.digit.easy_1_digit_hexadecimal.Result set from storage cu:io data.digit.lazy_1_digit_hexadecimal.Result

scoreboard players set #data.digit.easy_1_digit_hexadecimal.FUNCTION_STAGE cu-io -1
function cu:data/digit/easy_1_digit_hexadecimal/_reset_function

return run execute if data storage cu:io data.digit.easy_1_digit_hexadecimal.Result
