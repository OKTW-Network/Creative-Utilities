data modify storage cu:io value.different.Input.1 set from storage cu:value list.include.target
data modify storage cu:io value.different.Input.2 set from storage cu:value list.include.source[0]
function cu:value/different/main
execute if score #value.different.Result cu-io matches 0 run scoreboard players set #value.list.include.result cu 1

data remove storage cu:value list.include.source[0]

execute unless score #value.list.include.result cu matches 1 if data storage cu:value list.include.source[0] run function cu:value/list/include/_recursive-find
