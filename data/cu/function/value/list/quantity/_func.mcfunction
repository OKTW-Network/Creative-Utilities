data modify storage cu:io value.different.Input.1 set from storage cu:io value.list.quantity.Input.data[0]
data modify storage cu:io value.different.Input.2 set from storage cu:io value.list.quantity.Input.target
function cu:value/different/main
execute if score #value.different.Result cu-io matches 0 run scoreboard players add #value.list.quantity.Result cu-io 1
data remove storage cu:io value.list.quantity.Input.data[0]
execute if data storage cu:io value.list.quantity.Input.data[0] run function cu:value/list/quantity/_func
