scoreboard players set #entity.easy_get_hyphenated_uuid.FUNCTION_STAGE cu-io 0
data remove storage cu:io entity.easy_get_hyphenated_uuid.Result
execute unless entity @s run return fail

scoreboard players set #entity.easy_get_hyphenated_uuid.FUNCTION_STAGE cu-io 1
data modify storage cu:io data.easy_convert_to_hexadecimal_uuid.Input set from entity @s UUID
scoreboard players set #data.easy_convert_to_hexadecimal_uuid.Option.hyphenated cu-io 1
function cu:data/easy_convert_to_hexadecimal_uuid/main
data modify storage cu:io entity.easy_get_hyphenated_uuid.Result set from storage cu:io data.easy_convert_to_hexadecimal_uuid.Result

scoreboard players set #entity.easy_get_hyphenated_uuid.FUNCTION_STAGE cu-io -1
return run execute if data storage cu:io entity.easy_get_hyphenated_uuid.Result
