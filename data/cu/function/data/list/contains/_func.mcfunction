data modify storage cu:io data.different.Input.1 set from storage cu:io data.list.contains.Input.data[0]
data modify storage cu:io data.different.Input.2 set from storage cu:io data.list.contains.Input.target
function cu:data/different/main
execute if score #data.different.Result cu-io matches 0 run scoreboard players set #data.list.contains.Result cu-io 1
data remove storage cu:io data.list.contains.Input.data[0]
execute unless score #data.list.contains.Result cu-io matches 1 if data storage cu:io data.list.contains.Input.data[0] run function cu:data/list/contains/_func
