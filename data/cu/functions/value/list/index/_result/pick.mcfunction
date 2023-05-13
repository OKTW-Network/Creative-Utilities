execute if score #value.list.index._min cu matches 0 run data modify storage cu:value list.index.result append from storage cu:value list.index.input[0]
execute unless data storage cu:value list.index.result[0] if score #value.list.index._max cu = #value.list.index._listIndexMax cu run data modify storage cu:value list.index.result append from storage cu:value list.index.input[-1]
