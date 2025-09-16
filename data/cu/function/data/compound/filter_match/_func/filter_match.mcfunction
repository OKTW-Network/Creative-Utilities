data modify storage cu:io data.compound.match.Input.data set from storage cu:io data.compound.filter_match.Input.data_list[0]
data modify storage cu:io data.compound.match.Input.reference set from storage cu:io data.compound.filter_match.Input.reference
function cu:data/compound/match/main
scoreboard players operation #data.compound.filter_match.successful cu-internal = #data.compound.match.Result cu-io
execute if score #data.compound.filter_match.Option.exclude cu-io matches 1 run function cu:data/compound/filter_match/_func/reverse_successful
execute if score #data.compound.filter_match.successful cu-internal matches 1 run data modify storage cu:io data.compound.filter_match.Result append from storage cu:io data.compound.filter_match.Input.data_list[0]
scoreboard players operation #data.compound.filter_match.success_count cu-internal += #data.compound.filter_match.successful cu-internal
data remove storage cu:io data.compound.filter_match.Input.data_list[0]
execute if data storage cu:io data.compound.filter_match.Input.data_list[0] run function cu:data/compound/filter_match/_func/filter_match
