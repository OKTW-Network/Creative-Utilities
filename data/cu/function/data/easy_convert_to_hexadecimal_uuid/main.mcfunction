# Reminder
#  Results string.
scoreboard players set #data.easy_convert_to_hexadecimal_uuid.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input or error.
#  ""     : The result.
data remove storage cu:io data.easy_convert_to_hexadecimal_uuid.Result
data modify storage cu:internal dummy set value [I;]
data modify storage cu:internal dummy append from storage cu:io data.easy_convert_to_hexadecimal_uuid.Input[0]
data modify storage cu:internal dummy append from storage cu:io data.easy_convert_to_hexadecimal_uuid.Input[1]
data modify storage cu:internal dummy append from storage cu:io data.easy_convert_to_hexadecimal_uuid.Input[2]
data modify storage cu:internal dummy append from storage cu:io data.easy_convert_to_hexadecimal_uuid.Input[3]
data modify storage cu:io data.easy_convert_to_hexadecimal_uuid.Input set from storage cu:internal dummy
execute unless data storage cu:io data.easy_convert_to_hexadecimal_uuid.Input[3] run return run function cu:data/easy_convert_to_hexadecimal_uuid/_return_fail
# Option.hyphenated
#  0 : Do not apply this option.
#  1 : Result string representation. Format: "8-4-4-4-12" (numbers means the number of hexadecimal digits).
execute unless score #data.easy_convert_to_hexadecimal_uuid.Option.hyphenated cu-io matches 0..1 run scoreboard players set #data.easy_convert_to_hexadecimal_uuid.Option.hyphenated cu-io 0

scoreboard players set #data.easy_convert_to_hexadecimal_uuid.FUNCTION_STAGE cu-io 1
function cu:data/easy_convert_to_hexadecimal_uuid/_func/convert/main

scoreboard players set #data.easy_convert_to_hexadecimal_uuid.FUNCTION_STAGE cu-io -1
function cu:data/easy_convert_to_hexadecimal_uuid/_reset_function

return run execute if data storage cu:io data.easy_convert_to_hexadecimal_uuid.Result
