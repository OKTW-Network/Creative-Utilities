data modify storage cu:io value.compound.match_list.Input.data set from storage cu:io value.compound.filter_match_list.Input.data_list[0]
data modify storage cu:io value.compound.match_list.Input.reference_list set from storage cu:io value.compound.filter_match_list.Input.reference_list
scoreboard players operation #value.compound.match_list.Option.count cu-io = #value.compound.filter_match_list.Option.match_count cu-io
function cu:value/compound/match_list/main
scoreboard players operation #value.compound.filter_match_list.successful cu-internal = #value.compound.match_list.Result cu-io
execute if score #value.compound.filter_match_list.Option.exclude cu-io matches 1 run function cu:value/compound/filter_match_list/_func/reverse_successful
execute if score #value.compound.filter_match_list.successful cu-internal matches 1 run data modify storage cu:io value.compound.filter_match_list.Result append from storage cu:io value.compound.filter_match_list.Input.data_list[0]
scoreboard players operation #value.compound.filter_match_list.success_count cu-internal += #value.compound.filter_match_list.successful cu-internal
data remove storage cu:io value.compound.filter_match_list.Input.data_list[0]
execute if data storage cu:io value.compound.filter_match_list.Input.data_list[0] run function cu:value/compound/filter_match_list/_func/filter_match_list
