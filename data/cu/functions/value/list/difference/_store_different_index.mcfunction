data modify storage cu:value list.difference.result.different append value 0b
execute store result storage cu:value list.difference.result.different[-1] int 1 run scoreboard players get #value.list.difference._compareIndex cu
