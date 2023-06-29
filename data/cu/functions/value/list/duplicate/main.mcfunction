data remove storage cu:value list.duplicate.result

execute if data storage cu:value list.duplicate.input if score #value.list.duplicate.count cu matches 1.. run function cu:value/list/duplicate/_recursive

data remove storage cu:value list.duplicate.input
scoreboard players reset #value.list.duplicate.count cu
