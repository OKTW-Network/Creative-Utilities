data modify storage cu:value list.difference.result.different.value append value {}
data modify storage cu:value list.difference.result.different.value[-1].input1 set from storage cu:value list.difference.input1[0]
data modify storage cu:value list.difference.result.different.value[-1].input2 set from storage cu:value list.difference.input2[0]
