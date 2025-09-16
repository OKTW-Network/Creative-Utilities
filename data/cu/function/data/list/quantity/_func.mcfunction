data modify storage cu:io data.different.Input.1 set from storage cu:io data.list.quantity.Input.data[0]
data modify storage cu:io data.different.Input.2 set from storage cu:io data.list.quantity.Input.target
function cu:data/different/main
execute if score #data.different.Result cu-io matches 0 run scoreboard players add #data.list.quantity.Result cu-io 1
data remove storage cu:io data.list.quantity.Input.data[0]
execute if data storage cu:io data.list.quantity.Input.data[0] run function cu:data/list/quantity/_func
