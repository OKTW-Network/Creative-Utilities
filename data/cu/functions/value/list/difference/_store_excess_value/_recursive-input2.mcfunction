data modify storage cu:value list.difference.result.excess[1] append from storage cu:value list.difference.input2[0]
data remove storage cu:value list.difference.input2[0]
execute if data storage cu:value list.difference.input2[0] run function cu:value/list/difference/_store_excess_value/_recursive-input2
