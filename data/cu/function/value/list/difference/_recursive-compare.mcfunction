scoreboard players operation #value.list.difference._compareIndex cu = #value.list.difference._compareCountMax cu
scoreboard players operation #value.list.difference._compareIndex cu -= #value.list.difference._compareCount cu
data modify storage cu:io value.different.Input.1 set from storage cu:value list.difference.input1[0]
data modify storage cu:io value.different.Input.2 set from storage cu:value list.difference.input2[0]
function cu:value/different/main
execute if score #value.different.Result cu-io matches 0 if score #value.list.difference.method cu matches 0..1 run function cu:value/list/difference/_store_identical
execute if score #value.different.Result cu-io matches 1 if score #value.list.difference.method cu matches 0..2 unless score #value.list.difference.method cu matches 1 run function cu:value/list/difference/_store_different/main

data remove storage cu:value list.difference.input1[0]
data remove storage cu:value list.difference.input2[0]

scoreboard players remove #value.list.difference._compareCount cu 1

execute if score #value.list.difference._compareCount cu matches 1.. run function cu:value/list/difference/_recursive-compare
