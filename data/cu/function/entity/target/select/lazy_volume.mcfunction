# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  The entity selector cannot select unloaded entities.
scoreboard players reset #entity.target.select.lazy_volume.Result cu-io

$execute positioned ~$(x_1) ~$(y_1) ~$(z_1) run tag @e[dx=$(size_x),dy=$(size_y),dz=$(size_z)] add cu-internal.entity.target.select.lazy_volume_1
$execute store result score #entity.target.select.lazy_volume.Result cu-io positioned ~$(x_2) ~$(y_2) ~$(z_2) run tag @e[tag=cu-internal.entity.target.select.lazy_volume_1,dx=$(size_x),dy=$(size_y),dz=$(size_z)] add cu-io.entity.target
tag @e remove cu-internal.entity.target.select.lazy_volume_1

return run execute unless score #entity.target.select.lazy_volume.Result cu-io matches 0 run scoreboard players get #entity.target.select.lazy_volume.Result cu-io
