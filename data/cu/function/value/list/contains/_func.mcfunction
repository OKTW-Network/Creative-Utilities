data modify storage cu:io value.different.Input.1 set from storage cu:io value.list.contains.Input.data[0]
data modify storage cu:io value.different.Input.2 set from storage cu:io value.list.contains.Input.target
function cu:value/different/main
execute if score #value.different.Result cu-io matches 0 run scoreboard players set #value.list.contains.Result cu-io 1
data remove storage cu:io value.list.contains.Input.data[0]
execute unless score #value.list.contains.Result cu-io matches 1 if data storage cu:io value.list.contains.Input.data[0] run function cu:value/list/contains/_func
