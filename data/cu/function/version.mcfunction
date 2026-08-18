scoreboard players operation #version.Input.version_x cu-io = #current_version_x cu-meta
scoreboard players operation #version.Input.version_y cu-io = #current_version_y cu-meta
scoreboard players operation #version.Input.version_z cu-io = #current_version_z cu-meta
data modify storage cu:io version.Input.version_tag set from storage cu:meta current_version_tag
function cu:version/raw_stringify
tellraw @s ["",{"translate":"[Creative Utilities]:","color":"yellow","bold":true}," Version: ",{"type":"nbt","source":"storage","nbt":"version.raw_stringify.Result","storage":"cu:io","interpret":true}]

return 1
