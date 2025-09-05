data modify storage cu:value list.difference.result.different.index append value 0
execute store result storage cu:value list.difference.result.different.index[-1] int 1 run scoreboard players get #value.list.difference._compareIndex cu

execute if score #value.list.difference.differentMethod cu matches 0 run function cu:value/list/difference/_store_different/value/method_0
execute if score #value.list.difference.differentMethod cu matches 1 run function cu:value/list/difference/_store_different/value/method_1
execute if score #value.list.difference.differentMethod cu matches 2 run function cu:value/list/difference/_store_different/value/method_2
