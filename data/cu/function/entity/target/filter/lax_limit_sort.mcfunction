# Reminder
#  The entity selector cannot select unloaded entities.
scoreboard players reset entity.target.filter.lax_limit_sort.Result cu-internal
function cu:entity/target/filter/_normalize_option

$tag @e[tag=cu-io.entity.target,limit=$(count),sort="$(sort)"] add cu-internal.entity.target.filter.lax_limit_sort.1
execute if score #entity.target.filter.Option.reverse cu-io matches 0 store result score entity.target.filter.lax_limit_sort.Result cu-internal run tag @e[tag=!cu-internal.entity.target.filter.lax_limit_sort.1] remove cu-io.entity.target
execute if score #entity.target.filter.Option.reverse cu-io matches 1 store result score entity.target.filter.lax_limit_sort.Result cu-internal run tag @e[tag=cu-internal.entity.target.filter.lax_limit_sort.1] remove cu-io.entity.target
tag @e remove cu-internal.entity.target.filter.lax_limit_sort.1

function cu:entity/target/filter/_reset_function

return run execute unless score entity.target.filter.lax_limit_sort.Result cu-internal matches 0 run scoreboard players get entity.target.filter.lax_limit_sort.Result cu-internal
