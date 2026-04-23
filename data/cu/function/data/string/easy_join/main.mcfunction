# Reminder
#  Macros can cause the SNBT escape sequence to apply twice or conflict with something.
#   (See function cu:data/string/lazy_to_string for more information.)
scoreboard players set #data.string.easy_join.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input or error.
#  ""     : The result.
data remove storage cu:io data.string.easy_join.Result
execute unless data storage cu:io data.string.easy_join.Input[] run return run function cu:data/string/easy_join/_return_fail
# Option.separator
#  absent or empty : Do not apply this option.
#  "..."           : Specify the separator.
data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io data.string.easy_join.Option.separator
data modify storage cu:io data.string.easy_join.Option.separator set from storage cu:internal dummy

scoreboard players set #data.string.easy_join.FUNCTION_STAGE cu-io 1
function cu:data/string/easy_join/_func

scoreboard players set #data.string.easy_join.FUNCTION_STAGE cu-io -1
function cu:data/string/easy_join/_reset_function

return run execute if data storage cu:io data.string.easy_join.Result
