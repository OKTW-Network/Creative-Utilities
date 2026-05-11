data modify storage cu:io data.compound.match_list.Input.data set from storage cu:io data.list.find.Input.data[0]
data modify storage cu:io data.compound.match_list.Input.reference_list set from storage cu:io data.list.find.Input.target
scoreboard players operation #data.compound.match_list.Option.count cu-io = #data.list.find.Option.match_compound_list_count cu-io
execute if score #data.list.find.Option.method cu-io matches 5 run scoreboard players set #data.compound.match_list.Option.invert cu-io 1
function cu:data/compound/match_list/main
execute unless score #data.compound.match_list.Result cu-io matches 0..1 if score #data.list.find.Option.method cu-io matches 5 if score #data.list.find.Option.inverted_match_compound_catches_voided cu-io matches 1 run return 2
execute if score #data.compound.match_list.Result cu-io matches 1 run return 1
return fail
