data modify storage cu:io value.different.Input.1 set from storage cu:value list.quantity.target
data modify storage cu:io value.different.Input.2 set from storage cu:value list.quantity.source[0]
function cu:value/different
execute if score #value.different.result cu matches 0 run scoreboard players add #value.list.quantity.result cu 1

data remove storage cu:value list.quantity.source[0]

execute if data storage cu:value list.quantity.source[0] run function cu:value/list/quantity/_recursive-count
