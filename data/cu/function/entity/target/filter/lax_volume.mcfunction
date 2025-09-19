# Reminder
#  The entity selector cannot select unloaded entities.
scoreboard players reset entity.target.filter.lax_volume.Result cu-internal
function cu:entity/target/filter/_normalize_option

$execute positioned ~$(x_1) ~$(y_1) ~$(z_1) run tag @e[tag=cu-io.entity.target,dx=$(size_x),dy=$(size_y),dz=$(size_z)] add cu-internal.entity.target.filter.lax_volume.1
$execute positioned ~$(x_2) ~$(y_2) ~$(z_2) run tag @e[tag=cu-internal.entity.target.filter.lax_volume.1,dx=$(size_x),dy=$(size_y),dz=$(size_z)] add cu-internal.entity.target.filter.lax_volume.2
tag @e remove cu-internal.entity.target.filter.lax_volume.1
execute if score #entity.target.filter.Option.reverse cu-io matches 0 store result score entity.target.filter.lax_volume.Result cu-internal run tag @e[tag=!cu-internal.entity.target.filter.lax_volume.2] remove cu-io.entity.target
execute if score #entity.target.filter.Option.reverse cu-io matches 1 store result score entity.target.filter.lax_volume.Result cu-internal run tag @e[tag=cu-internal.entity.target.filter.lax_volume.2] remove cu-io.entity.target
tag @e remove cu-internal.entity.target.filter.lax_volume.2

function cu:entity/target/filter/_reset_function

return run execute unless score entity.target.filter.lax_volume.Result cu-internal matches 0 run scoreboard players get entity.target.filter.lax_volume.Result cu-internal
