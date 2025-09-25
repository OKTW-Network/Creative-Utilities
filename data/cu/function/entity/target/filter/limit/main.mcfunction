# Reminder
#  The entity selector cannot select unloaded entities.
scoreboard players reset #entity.target.filter.limit.Result cu-io
function cu:entity/target/filter/_normalize_option
execute unless score #entity.target.filter.limit.Option.count cu-io matches 1.. run scoreboard players set #entity.target.filter.limit.Option.count cu-io 0
execute unless score #entity.target.filter.limit.Option.sort cu-io matches 0..3 run scoreboard players set #entity.target.filter.limit.Option.sort cu-io 0

scoreboard players operation #entity.target.filter.limit.recur_countdown cu-internal = #entity.target.filter.limit.Option.count cu-io
function cu:entity/target/filter/limit/_func
execute if score #entity.target.filter.Option.reverse cu-io matches 0 run tag @e[tag=!cu-internal.entity.target.filter.limit.1] remove cu-io.entity.target
execute if score #entity.target.filter.Option.reverse cu-io matches 1 run tag @e[tag=cu-internal.entity.target.filter.limit.1] remove cu-io.entity.target
tag @e remove cu-internal.entity.target.filter.limit.1

function cu:entity/target/filter/_reset_function
scoreboard players reset #entity.target.filter.limit.Option.count cu-io
scoreboard players reset #entity.target.filter.limit.Option.sort cu-io
scoreboard players reset #entity.target.filter.limit.recur_countdown cu-internal

return run execute unless score #entity.target.filter.limit.Result cu-io matches 0 run scoreboard players get #entity.target.filter.limit.Result cu-io
