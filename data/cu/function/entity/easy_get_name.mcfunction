scoreboard players set #entity.easy_get_name.FUNCTION_STAGE cu-io 0
data remove storage cu:io entity.easy_get_name.Result
execute unless entity @s run return fail

scoreboard players set #entity.easy_get_name.FUNCTION_STAGE cu-io 1
function cu:entity/easy_get_hyphenated_uuid
data modify storage cu:io data.string.resolve_raw.Input set value {type:"selector",selector:""}
data modify storage cu:io data.string.resolve_raw.Input.selector set from storage cu:io entity.easy_get_hyphenated_uuid.Result
function cu:data/string/resolve_raw/main
data modify storage cu:io entity.easy_get_name.Result set from storage cu:io data.string.resolve_raw.Result.hover_event.name

scoreboard players set #entity.easy_get_name.FUNCTION_STAGE cu-io -1
return run execute if data storage cu:io entity.easy_get_name.Result
