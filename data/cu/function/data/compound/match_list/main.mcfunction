scoreboard players set #data.compound.match_list.FUNCTION_STAGE cu-io 0
# Result
#  none : Invalid input or error.
#  0..1 : The successful.
scoreboard players reset #data.compound.match_list.Result cu-io
execute unless data storage cu:io data.compound.match_list.Input.data{} run return run function cu:data/compound/match_list/_return_fail
execute unless data storage cu:io data.compound.match_list.Input.reference_list[{}] run return run function cu:data/compound/match_list/_return_fail
# Option.count
#  0   : All the references must match.
#  1.. : Specify the least number of matches.
execute unless score #data.compound.match_list.Option.count cu-io matches 0.. run scoreboard players set #data.compound.match_list.Option.count cu-io 0
# Option.invert / Option.reverse (abandoned)
#  0 : Do not apply this option.
#  1 : Invert the result by inverting all the conditions.
execute if score #data.compound.match_list.Option.reverse cu-io matches -2147483648..2147483647 run scoreboard players operation #data.compound.match_list.Option.invert cu-io = #data.compound.match_list.Option.reverse cu-io
execute unless score #data.compound.match_list.Option.invert cu-io matches 0..1 run scoreboard players set #data.compound.match_list.Option.invert cu-io 0

scoreboard players set #data.compound.match_list.FUNCTION_STAGE cu-io 1
scoreboard players set #data.compound.match_list.success_count cu-internal 0
function cu:data/compound/match_list/_func/match_list
execute if score #data.compound.match_list.Option.count cu-io matches 1.. unless score #data.compound.match_list.success_count cu-internal = #data.compound.match_list.Option.count cu-io run scoreboard players set #data.compound.match_list.Result cu-io 0

scoreboard players set #data.compound.match_list.FUNCTION_STAGE cu-io -1
function cu:data/compound/match_list/_reset_function

return run execute unless score #data.compound.match_list.Result cu-io matches 0 run scoreboard players get #data.compound.match_list.Result cu-io
