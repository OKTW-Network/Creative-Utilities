scoreboard players operation #version.Input.version_x cu-io = #cu$current_version_x Meta
scoreboard players operation #version.Input.version_y cu-io = #cu$current_version_y Meta
scoreboard players operation #version.Input.version_z cu-io = #cu$current_version_z Meta
data modify storage cu:io version.Input.version_tag set from storage meta:cu current_version_tag
function cu:version/raw_stringify
tellraw @s ["",{"translate":"[Creative Utilities]:","color":"yellow","bold":true}," Version: ",{"type":"nbt","source":"storage","nbt":"version.raw_stringify.Result","storage":"cu:io","interpret":true}]

return 1
