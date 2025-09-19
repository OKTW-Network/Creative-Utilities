# Reminder
#  The entity selector cannot select unloaded entities.
scoreboard players reset entity.target.filter.marker_and_display.Result cu-io
function cu:entity/target/filter/_normalize_option

execute if score #entity.target.filter.Option.reverse cu-io matches 0 run function cu:entity/target/filter/marker_and_display/_func/normal
execute if score #entity.target.filter.Option.reverse cu-io matches 1 run function cu:entity/target/filter/marker_and_display/_func/reverse

function cu:entity/target/filter/_reset_function

return run execute unless score entity.target.filter.marker_and_display.Result cu-io matches 0 run scoreboard players get entity.target.filter.marker_and_display.Result cu-io
