data modify storage cu:value string.static.input set value '[{"text":"Version: "},{"type":"nbt","source":"storage","nbt":"make_static.result","storage":"cu:version","interpret":true}]'
function cu:value/string/static
data modify storage cu:version broadcast_relation.result.message set from storage cu:value string.static.result
