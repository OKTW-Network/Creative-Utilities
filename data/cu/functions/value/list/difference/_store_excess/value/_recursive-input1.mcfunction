data modify storage cu:value list.difference.result.excess.value append from storage cu:value list.difference.input1[0]
data remove storage cu:value list.difference.input1[0]
execute if data storage cu:value list.difference.input1[0] run function cu:value/list/difference/_store_excess/value/_recursive-input1
