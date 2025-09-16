data modify storage cu:io data.compound.match_list.Input.data set from storage cu:io data.compound.filter_match_list.Input.data_list[0]
data modify storage cu:io data.compound.match_list.Input.reference_list set from storage cu:io data.compound.filter_match_list.Input.reference_list
scoreboard players operation #data.compound.match_list.Option.count cu-io = #data.compound.filter_match_list.Option.match_count cu-io
function cu:data/compound/match_list/main
scoreboard players operation #data.compound.filter_match_list.successful cu-internal = #data.compound.match_list.Result cu-io
execute if score #data.compound.filter_match_list.Option.exclude cu-io matches 1 run function cu:data/compound/filter_match_list/_func/reverse_successful
execute if score #data.compound.filter_match_list.successful cu-internal matches 1 run data modify storage cu:io data.compound.filter_match_list.Result append from storage cu:io data.compound.filter_match_list.Input.data_list[0]
scoreboard players operation #data.compound.filter_match_list.success_count cu-internal += #data.compound.filter_match_list.successful cu-internal
data remove storage cu:io data.compound.filter_match_list.Input.data_list[0]
execute if data storage cu:io data.compound.filter_match_list.Input.data_list[0] run function cu:data/compound/filter_match_list/_func/filter_match_list
