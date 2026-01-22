execute store result score #1 temp run data get storage cu:storage world[{id:'cu:world_config'}].data[{namespace:'cu'}].record[{id:'broadcast_version_on_load'}].value
execute if score #1 temp matches 0 run return 0
data modify storage cu:io version.compare.broadcast_relation.Input.datapack_name set value {"text":"Creative Utilities"}
scoreboard players set #version.compare.broadcast_relation.Option.suppress_identical cu-io 0
execute if score #1 temp matches 2 run scoreboard players set #version.compare.broadcast_relation.Option.suppress_identical cu-io 1
scoreboard players operation #version.compare.Input.1.version_x cu-io = #cu$previous_version_x Meta
scoreboard players operation #version.compare.Input.1.version_y cu-io = #cu$previous_version_y Meta
scoreboard players operation #version.compare.Input.1.version_z cu-io = #cu$previous_version_z Meta
data modify storage cu:io version.compare.Input.1.version_tag set from storage meta:cu previous_version_tag
scoreboard players operation #version.compare.Input.2.version_x cu-io = #cu$current_version_x Meta
scoreboard players operation #version.compare.Input.2.version_y cu-io = #cu$current_version_y Meta
scoreboard players operation #version.compare.Input.2.version_z cu-io = #cu$current_version_z Meta
data modify storage cu:io version.compare.Input.2.version_tag set from storage meta:cu current_version_tag
function cu:version/compare/broadcast_relation/main
return 1