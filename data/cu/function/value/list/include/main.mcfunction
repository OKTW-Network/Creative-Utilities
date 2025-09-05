scoreboard players set #value.list.include.result cu 0

execute if data storage cu:value list.include.source[0] run function cu:value/list/include/_recursive-find

data remove storage cu:value list.include.target
data remove storage cu:value list.include.source
