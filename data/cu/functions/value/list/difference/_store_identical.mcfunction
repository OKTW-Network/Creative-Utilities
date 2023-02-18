data modify storage cu:value list.difference.result.identical.index append value 0
execute store result storage cu:value list.difference.result.identical.index[-1] int 1 run scoreboard players get #value.list.difference._compareIndex cu

data modify storage cu:value list.difference.result.identical.value append from storage cu:value list.difference.input1[0]
