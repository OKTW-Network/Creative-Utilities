scoreboard players set #entity.get_name.FUNCTION_STAGE cu-io 0
data remove storage cu:io entity.get_name.Result
execute unless entity @s run return fail

scoreboard players set #entity.get_name.FUNCTION_STAGE cu-io 1
data modify storage cu:io data.string.resolve_raw.Input set value {type:"selector",selector:"@s"}
function cu:data/string/resolve_raw/main
data modify storage cu:io entity.get_name.Result set from storage cu:io data.string.resolve_raw.Result.hover_event.name

scoreboard players set #entity.get_name.FUNCTION_STAGE cu-io -1
return run execute if data storage cu:io entity.get_name.Result
