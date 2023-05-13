data modify storage cu:value list.reverse.result prepend from storage cu:value list.reverse.input[0]

data remove storage cu:value list.reverse.input[0]

execute if data storage cu:value list.reverse.input[0] run function cu:value/list/reverse/_recursive
