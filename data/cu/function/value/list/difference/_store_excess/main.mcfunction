execute store result storage cu:value list.difference.result.excess.input byte 1.0 run scoreboard players get #value.list.difference._excessInput cu

scoreboard players operation #value.digit.sequence.Input.base cu-io = #value.list.difference._compareCountMax cu
scoreboard players set #value.digit.sequence.Input.value cu-io 1
scoreboard players operation #value.digit.sequence.Option.count cu-io = #value.list.difference._excessCount cu
function cu:value/digit/sequence/main
data modify storage cu:value list.difference.result.excess.index set from storage cu:io value.digit.sequence.Result

execute if score #value.list.difference._excessInput cu matches 1 run function cu:value/list/difference/_store_excess/value/_recursive-input1
execute if score #value.list.difference._excessInput cu matches 2 run function cu:value/list/difference/_store_excess/value/_recursive-input2
