data modify storage cu:io value.compound.match.Input.data set from storage cu:io value.compound.match_list.Input.data
data modify storage cu:io value.compound.match.Input.reference set from storage cu:io value.compound.match_list.Input.reference_list[0]
function cu:value/compound/match/main
scoreboard players operation #value.compound.match_list.successful cu-internal = #value.compound.match.Result cu-io
execute if score #value.compound.match_list.Option.reverse cu-io matches 1 run function cu:value/compound/match_list/_func/reverse_successful
scoreboard players operation #value.compound.match_list.Result cu-io = #value.compound.match_list.successful cu-internal
scoreboard players operation #value.compound.match_list.success_count cu-internal += #value.compound.match_list.successful cu-internal
data remove storage cu:io value.compound.match_list.Input.reference_list[0]
scoreboard players set #value.compound.match_list.stop_recur cu-internal 1
execute if score #value.compound.match_list.Option.count cu-io matches 0 if score #value.compound.match_list.successful cu-internal matches 1 run scoreboard players set #value.compound.match_list.stop_recur cu-internal 0
execute if score #value.compound.match_list.Option.count cu-io matches 1.. unless score #value.compound.match_list.success_count cu-internal = #value.compound.match_list.Option.count cu-io run scoreboard players set #value.compound.match_list.stop_recur cu-internal 0
execute if score #value.compound.match_list.stop_recur cu-internal matches 0 if data storage cu:io value.compound.match_list.Input.reference_list[0] run function cu:value/compound/match_list/_func/match_list
