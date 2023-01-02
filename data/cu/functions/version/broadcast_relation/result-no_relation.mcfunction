data modify storage cu:string toStatic.input set value '[{"text":"Version: "},{"nbt":"make_static.result","storage":"cu:version","interpret":true}]'
function cu:string/convert_to-static
data modify storage cu:version broadcast_relation.result.message set from storage cu:string toStatic.result
