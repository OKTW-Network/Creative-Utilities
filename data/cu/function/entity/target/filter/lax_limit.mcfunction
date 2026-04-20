#Abandoned, replaced with `lazy_limit`.
# Reminder
#  The result cannot be reset if the function failed to instantiate.
scoreboard players reset #entity.target.filter.lax_limit.Result cu-io
$execute store result score #entity.target.filter.lax_limit.Result cu-io run function cu:entity/target/filter/lazy_limit {count:$(count)}
return run execute unless score #entity.target.filter.lax_limit.Result cu-io matches 0 run scoreboard players get #entity.target.filter.lax_limit.Result cu-io
