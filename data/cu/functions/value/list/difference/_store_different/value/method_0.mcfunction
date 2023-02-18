execute unless data storage cu:value list.difference.result.different.value[] run data modify storage cu:value list.difference.result.different.value set value [[],[],[]]

data modify storage cu:value list.difference.result.different.value[0] append from storage cu:value list.difference.input1[0]
data modify storage cu:value list.difference.result.different.value[1] append from storage cu:value list.difference.input2[0]

data modify storage cu:value list.difference.result.different.value[2] append value {}
data modify storage cu:value list.difference.result.different.value[2][-1].input1 set from storage cu:value list.difference.input1[0]
data modify storage cu:value list.difference.result.different.value[2][-1].input2 set from storage cu:value list.difference.input2[0]
