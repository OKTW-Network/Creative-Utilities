data modify storage cu:value list.difference.result.identical append value 0b
execute store result storage cu:value list.difference.result.identical[-1] int 1 run scoreboard players get #value.list.difference._compareIndex cu
