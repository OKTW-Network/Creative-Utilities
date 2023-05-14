execute unless score #value.list.difference.method cu matches -2147483648..2147483647 run scoreboard players set #value.list.difference.method cu 0
execute unless score #value.list.difference.differentMethod cu matches -2147483648..2147483647 run scoreboard players set #value.list.difference.differentMethod cu 0
data remove storage cu:value list.difference.result
scoreboard players set #value.list.difference._excessInput cu 0
scoreboard players set #value.list.difference._excessCount cu 0
execute store result score #1 temp store result score #3 temp run data get storage cu:value list.difference.input1
execute store result score #2 temp store result score #4 temp run data get storage cu:value list.difference.input2
execute if score #1 temp > #2 temp run scoreboard players set #value.list.difference._excessInput cu 1
execute if score #1 temp < #2 temp run scoreboard players set #value.list.difference._excessInput cu 2
execute if score #value.list.difference._excessInput cu matches 1.. store result score #value.list.difference._excessCount cu run scoreboard players operation #3 temp -= #4 temp
execute if score #value.list.difference._excessCount cu matches ..-1 run scoreboard players operation #value.list.difference._excessCount cu *= #-1 num
execute store result score #value.list.difference._compareCount cu store result score #value.list.difference._compareCountMax cu run scoreboard players operation #1 temp < #2 temp

function cu:value/list/difference/_recursive-compare

execute if score #value.list.difference.resultExcess cu matches 1 if score #value.list.difference._excessInput cu matches 1.. run function cu:value/list/difference/_store_excess/main

scoreboard players reset #value.list.difference.method cu
scoreboard players reset #value.list.difference.differentMethod cu
scoreboard players reset #value.list.difference.resultExcess cu
scoreboard players reset #value.list.difference._compareCount cu
scoreboard players reset #value.list.difference._compareCountMax cu
scoreboard players reset #value.list.difference._compareIndex cu
scoreboard players reset #value.list.difference._excessInput cu
scoreboard players reset #value.list.difference._excessCount cu
