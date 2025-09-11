scoreboard players set #value.compound.match_list.FUNCTION_STAGE cu-io 0
# Result
#  none : invalid inputs or error
#  0..1 : successful
scoreboard players reset #value.compound.match_list.Result cu-io
execute unless data storage cu:io value.compound.match_list.Input.data{} run return run function cu:value/compound/match_list/_return_fail
execute unless data storage cu:io value.compound.match_list.Input.reference_list[{}] run return run function cu:value/compound/match_list/_return_fail
# Option.count
#  0   : all must matches
#  1.. : specify the least number of matches
execute unless score #value.compound.match_list.Option.count cu-io matches 0.. run scoreboard players set #value.compound.match_list.Option.count cu-io 0
# Option.reverse
#  0 : do not apply this option
#  1 : reverses the successful of the comparsion
execute unless score #value.compound.match_list.Option.reverse cu-io matches 0..1 run scoreboard players set #value.compound.match_list.Option.reverse cu-io 0

scoreboard players set #value.compound.match_list.FUNCTION_STAGE cu-io 1
scoreboard players set #value.compound.match_list.success_count cu-internal 0
function cu:value/compound/match_list/_func/match_list
execute if score #value.compound.match_list.Option.count cu-io matches 1.. unless score #value.compound.match_list.success_count cu-internal = #value.compound.match_list.Option.count cu-io run scoreboard players set #value.compound.match_list.Result cu-io 0

scoreboard players set #value.compound.match_list.FUNCTION_STAGE cu-io -1
function cu:value/compound/match_list/_reset_function

return run execute unless score #value.compound.match_list.Result cu-io matches 0 run scoreboard players get #value.compound.match_list.Result cu-io
