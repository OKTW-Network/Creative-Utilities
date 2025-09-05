execute store result storage cu:value list.difference.result.excess.input byte 1.0 run scoreboard players get #value.list.difference._excessInput cu

scoreboard players operation #value.digit.sequence.origin cu = #value.list.difference._compareCountMax cu
scoreboard players set #value.digit.sequence.value cu 1
scoreboard players operation #value.digit.sequence.count cu = #value.list.difference._excessCount cu
function cu:value/digit/sequence/main
data modify storage cu:value list.difference.result.excess.index set from storage cu:value digit.sequence.result

execute if score #value.list.difference._excessInput cu matches 1 run function cu:value/list/difference/_store_excess/value/_recursive-input1
execute if score #value.list.difference._excessInput cu matches 2 run function cu:value/list/difference/_store_excess/value/_recursive-input2
