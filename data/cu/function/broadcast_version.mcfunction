data modify storage cu:version broadcast_relation.input.datapack_name set value {"text":"Creative Utilities"}
scoreboard players operation #version.broadcast_relation.input.method cu = #cu$general.print_version Config
function cu:version
scoreboard players operation #version.broadcast_relation.input_1.x cu = #cu$version.x Meta
scoreboard players operation #version.broadcast_relation.input_1.y cu = #cu$version.y Meta
scoreboard players operation #version.broadcast_relation.input_1.z cu = #cu$version.z Meta
data modify storage cu:version broadcast_relation.input_1.t set from storage meta:cu version.t
scoreboard players operation #version.broadcast_relation.input_2.x cu = #cu$current_version.x Meta
scoreboard players operation #version.broadcast_relation.input_2.y cu = #cu$current_version.y Meta
scoreboard players operation #version.broadcast_relation.input_2.z cu = #cu$current_version.z Meta
data modify storage cu:version broadcast_relation.input_2.t set from storage meta:cu current_version.t
function cu:version/broadcast_relation/main
