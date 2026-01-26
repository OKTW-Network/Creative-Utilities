scoreboard players set #version.Input.version_x cu-io 4
scoreboard players set #version.Input.version_y cu-io 0
scoreboard players set #version.Input.version_z cu-io 0
data modify storage cu:io version.Input.version_tag set value 'pack-94-1.1'
function cu:version/normalize
scoreboard players operation #cu$previous_version_x Meta = #cu$current_version_x Meta
scoreboard players operation #cu$previous_version_y Meta = #cu$current_version_y Meta
scoreboard players operation #cu$previous_version_z Meta = #cu$current_version_z Meta
data modify storage meta:cu previous_version_tag set from storage meta:cu current_version_tag
scoreboard players operation #cu$current_version_x Meta = #version.normalize.Result.version_x cu-io
scoreboard players operation #cu$current_version_y Meta = #version.normalize.Result.version_y cu-io
scoreboard players operation #cu$current_version_z Meta = #version.normalize.Result.version_z cu-io
data modify storage meta:cu current_version_tag set from storage cu:io version.normalize.Result.version_tag
function cu:_func/on_load_broadcast_version_relation