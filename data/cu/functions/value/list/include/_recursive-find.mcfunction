data modify storage cu:value different.input1 set from storage cu:value list.include.target
data modify storage cu:value different.input2 set from storage cu:value list.include.source[0]
function cu:value/different
execute if score #value.different.result cu matches 0 run scoreboard players set #value.list.include.result cu 1

data remove storage cu:value list.include.source[0]

execute unless score #value.list.include.result cu matches 1 if data storage cu:value list.include.source[0] run function cu:value/list/include/_recursive-find
