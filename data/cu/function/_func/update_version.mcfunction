scoreboard players set #version.Input.version_x cu-io 4
scoreboard players set #version.Input.version_y cu-io 2
scoreboard players set #version.Input.version_z cu-io 0
data modify storage cu:io version.Input.version_tag set value '74'
function cu:version/normalize
scoreboard players operation #previous_version_x cu-meta = #current_version_x cu-meta
scoreboard players operation #previous_version_y cu-meta = #current_version_y cu-meta
scoreboard players operation #previous_version_z cu-meta = #current_version_z cu-meta
data modify storage cu:meta previous_version_tag set from storage cu:meta current_version_tag
scoreboard players operation #current_version_x cu-meta = #version.normalize.Result.version_x cu-io
scoreboard players operation #current_version_y cu-meta = #version.normalize.Result.version_y cu-io
scoreboard players operation #current_version_z cu-meta = #version.normalize.Result.version_z cu-io
data modify storage cu:meta current_version_tag set from storage cu:io version.normalize.Result.version_tag
function cu:_func/on_load_broadcast_version_relation
