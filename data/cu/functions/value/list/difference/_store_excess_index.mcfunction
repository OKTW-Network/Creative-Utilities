scoreboard players operation #value.digit.sequence.origin cu = #value.list.difference._compareCountMax cu
scoreboard players set #value.digit.sequence.value cu 1
scoreboard players operation #value.digit.sequence.count cu = #value.list.difference._excessCount cu
function cu:value/digit/sequence/main
execute if score #value.list.difference._excessInput cu matches 1 run data modify storage cu:value list.difference.result.excess[0] set from storage cu:value digit.sequence.result
execute if score #value.list.difference._excessInput cu matches 2 run data modify storage cu:value list.difference.result.excess[1] set from storage cu:value digit.sequence.result
