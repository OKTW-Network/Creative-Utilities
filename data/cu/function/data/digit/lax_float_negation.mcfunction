# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Returned value is not as precise as the result value.
data remove storage cu:io data.digit.lax_float_negation.Result
$execute store success score #1 cu-internal summon minecraft:block_display run function cu:data/digit/_func/display_entity/lazy_float_division {dividend:$(value)f,divisor:-1f}
execute if score #1 cu-internal matches 1 run data modify storage cu:io data.digit.lax_float_negation.Result set from storage cu:internal data.digit.display_entity.lazy_float_division.Result
return run data get storage cu:io data.digit.lax_float_negation.Result
