execute if score #cu$general.print_version Config matches 1..2 run function cu:broadcast_version

function cu:version
scoreboard players operation #cu$previous_version.x Meta = #cu$current_version.x Meta
scoreboard players operation #cu$previous_version.y Meta = #cu$current_version.y Meta
scoreboard players operation #cu$previous_version.z Meta = #cu$current_version.z Meta
data modify storage meta:cu previous_version.t set from storage meta:cu current_version.t
scoreboard players operation #cu$current_version.x Meta = #cu$version.x Meta
scoreboard players operation #cu$current_version.y Meta = #cu$version.y Meta
scoreboard players operation #cu$current_version.z Meta = #cu$version.z Meta
data modify storage meta:cu current_version.t set from storage meta:cu version.t
