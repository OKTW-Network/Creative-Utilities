data modify storage cu:value list.mix.result append from storage cu:value list.mix.input2[0]
execute if data storage cu:value list.mix.input2[-1] run data modify storage cu:value list.mix.result append from storage cu:value list.mix.input2[-1]
data remove storage cu:value list.mix.input2[0]
data remove storage cu:value list.mix.input2[-1]

execute if data storage cu:value list.mix.input2[0] run function cu:value/list/mix/_recursive-append
