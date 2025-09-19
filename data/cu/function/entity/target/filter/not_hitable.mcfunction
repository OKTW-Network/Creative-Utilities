# Reminder
#  The entity selector cannot select unloaded entities.
scoreboard players reset entity.target.filter.not_hitable.Result cu-io
function cu:entity/target/filter/_normalize_option

execute if score #entity.target.filter.Option.reverse cu-io matches 0 run tag @e[tag=cu-io.entity.target,type=!#cu:not_hitable] remove cu-io.entity.target
execute if score #entity.target.filter.Option.reverse cu-io matches 1 run tag @e[tag=cu-io.entity.target,type=#cu:not_hitable] remove cu-io.entity.target

function cu:entity/target/filter/_reset_function

return run execute unless score entity.target.filter.not_hitable.Result cu-io matches 0 run scoreboard players get entity.target.filter.not_hitable.Result cu-io
