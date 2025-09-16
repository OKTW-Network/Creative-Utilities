scoreboard players set #data.compound.match.FUNCTION_STAGE cu-io 0
# Result
#  none : invalid inputs or error
#  0..1 : successful
scoreboard players reset #data.compound.match.Result cu-io
execute unless data storage cu:io data.compound.match.Input.data{} run return run function cu:data/compound/match/_return_fail
execute unless data storage cu:io data.compound.match.Input.reference{} run return run function cu:data/compound/match/_return_fail
# Option.reverse
#  0 : do not apply this option
#  1 : reverses the successful of the comparsion
execute unless score value.compound.match.Option.reverse cu-io matches 0..1 run scoreboard players set value.compound.match.Option.reverse cu-io 0

scoreboard players set #data.compound.match.FUNCTION_STAGE cu-io 1
execute store success score #data.compound.match.Result cu-io run data modify storage cu:io data.compound.match.Input.data merge from storage cu:io data.compound.match.Input.reference
execute if score value.compound.match.Option.reverse cu-io matches 0 run function cu:data/compound/match/_func

scoreboard players set #data.compound.match.FUNCTION_STAGE cu-io -1
function cu:data/compound/match/_reset_function

return run execute unless score #data.compound.match.Result cu-io matches 0 run scoreboard players get #data.compound.match.Result cu-io
