# Reminder
#  The valid range is approximately [-20000000, 20000000).
scoreboard players set #data.digit.easy_double_is_negative.FUNCTION_STAGE cu-io 0
scoreboard players reset #data.digit.easy_double_is_negative.Result cu-io
execute unless data storage cu:io data.digit.easy_double_is_negative.Input run return run function cu:data/digit/easy_double_is_negative/_return_fail

scoreboard players set #data.digit.easy_double_is_negative.FUNCTION_STAGE cu-io 1
execute positioned ~ 0 ~ summon marker unless function cu:data/digit/easy_double_is_negative/_func run function cu:data/digit/easy_double_is_negative/_return_fail

scoreboard players set #data.digit.easy_double_is_negative.FUNCTION_STAGE cu-io -1
function cu:data/digit/easy_double_is_negative/_reset_function

return run execute unless score #data.digit.easy_double_is_negative.Result cu-io matches 0 run scoreboard players get #data.digit.easy_double_is_negative.Result cu-io
