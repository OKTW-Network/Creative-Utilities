scoreboard players set #value.list.quantity.result cu 0

execute if data storage cu:value list.quantity.source[0] run function cu:value/list/quantity/_recursive-count

data remove storage cu:value list.quantity.target
data remove storage cu:value list.quantity.source
