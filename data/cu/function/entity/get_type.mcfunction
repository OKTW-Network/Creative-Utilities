scoreboard players set #entity.get_type.FUNCTION_STAGE cu-io 0
data remove storage cu:io entity.get_type.Result
execute unless entity @s run return fail

scoreboard players set #entity.get_type.FUNCTION_STAGE cu-io 1
data modify storage cu:io data.string.resolve_raw.Input set value {type:"selector",selector:"@s"}
function cu:data/string/resolve_raw/main
data modify storage cu:io entity.get_type.Result set from storage cu:io data.string.resolve_raw.Result.hover_event.id

scoreboard players set #entity.get_type.FUNCTION_STAGE cu-io -1
return run execute if data storage cu:io entity.get_type.Result
