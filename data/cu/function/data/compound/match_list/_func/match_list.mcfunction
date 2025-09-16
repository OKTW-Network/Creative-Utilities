data modify storage cu:io data.compound.match.Input.data set from storage cu:io data.compound.match_list.Input.data
data modify storage cu:io data.compound.match.Input.reference set from storage cu:io data.compound.match_list.Input.reference_list[0]
function cu:data/compound/match/main
scoreboard players operation #data.compound.match_list.successful cu-internal = #data.compound.match.Result cu-io
execute if score #data.compound.match_list.Option.reverse cu-io matches 1 run function cu:data/compound/match_list/_func/reverse_successful
scoreboard players operation #data.compound.match_list.Result cu-io = #data.compound.match_list.successful cu-internal
scoreboard players operation #data.compound.match_list.success_count cu-internal += #data.compound.match_list.successful cu-internal
data remove storage cu:io data.compound.match_list.Input.reference_list[0]
scoreboard players set #data.compound.match_list.stop_recur cu-internal 1
execute if score #data.compound.match_list.Option.count cu-io matches 0 if score #data.compound.match_list.successful cu-internal matches 1 run scoreboard players set #data.compound.match_list.stop_recur cu-internal 0
execute if score #data.compound.match_list.Option.count cu-io matches 1.. unless score #data.compound.match_list.success_count cu-internal = #data.compound.match_list.Option.count cu-io run scoreboard players set #data.compound.match_list.stop_recur cu-internal 0
execute if score #data.compound.match_list.stop_recur cu-internal matches 0 if data storage cu:io data.compound.match_list.Input.reference_list[0] run function cu:data/compound/match_list/_func/match_list
