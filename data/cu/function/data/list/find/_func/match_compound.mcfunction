data modify storage cu:io data.compound.match.Input.data set from storage cu:io data.list.find.Input.data[0]
data modify storage cu:io data.compound.match.Input.reference set from storage cu:io data.list.find.Input.target
execute if score #data.list.find.Option.method cu-io matches 3 run scoreboard players set #data.compound.match.Option.invert cu-io 1
function cu:data/compound/match/main
execute unless score #data.compound.match.Result cu-io matches 0..1 if score #data.list.find.Option.method cu-io matches 3 if score #data.list.find.Option.inverted_match_compound_catches_voided cu-io matches 1 run return 2
execute if score #data.compound.match.Result cu-io matches 1 run return 1
return fail
