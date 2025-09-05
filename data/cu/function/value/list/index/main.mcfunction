data remove storage cu:value list.index.result
execute unless score #value.list.index.start cu matches -2147483648..2147483647 run scoreboard players set #value.list.index.start cu 0
execute unless score #value.list.index.end cu matches -2147483648..2147483647 run scoreboard players operation #value.list.index.end cu = #value.list.index.start cu
execute unless score #value.list.index.arrange cu matches 0..1 run scoreboard players set #value.list.index.arrange cu 0
execute unless score #value.list.index.circular cu matches 0..3 run scoreboard players set #value.list.index.circular cu 0
execute store result score #value.list.index._listLength1 cu store result score #value.list.index._listLength2 cu store result score #value.list.index._listIndexMax cu run data get storage cu:value list.index.input
scoreboard players remove #value.list.index._listIndexMax cu 1
execute if score #value.list.index.start cu matches ..-1 store result score #value.list.index.start cu run scoreboard players operation #value.list.index._listLength1 cu -= #value.list.index.start cu
execute if score #value.list.index.end cu matches ..-1 store result score #value.list.index.end cu run scoreboard players operation #value.list.index._listLength2 cu -= #value.list.index.end cu
scoreboard players operation #value.list.index.start cu < #value.list.index._listIndexMax cu
execute if score #value.list.index.start cu matches ..-1 run scoreboard players set #value.list.index.start cu 0
scoreboard players operation #value.list.index.end cu < #value.list.index._listIndexMax cu
execute if score #value.list.index.end cu matches ..-1 run scoreboard players set #value.list.index.end cu 0
scoreboard players operation #value.list.index._min cu = #value.list.index.start cu
scoreboard players operation #value.list.index._min cu < #value.list.index.end cu
scoreboard players operation #value.list.index._max cu = #value.list.index.start cu
scoreboard players operation #value.list.index._max cu > #value.list.index.end cu
scoreboard players set #value.list.index._trueCircular cu 0
execute if score #value.list.index.circular cu matches 2 if score #value.list.index.start cu > #value.list.index.end cu run scoreboard players set #value.list.index._trueCircular cu 1
execute if score #value.list.index.circular cu matches 3 if score #value.list.index.end cu > #value.list.index.start cu run scoreboard players set #value.list.index._trueCircular cu 1
execute if score #value.list.index.circular cu matches 2.. run scoreboard players operation #value.list.index.circular cu = #value.list.index._trueCircular cu

execute if data storage cu:value list.index.input[0] run function cu:value/list/index/_recursive

data remove storage cu:value list.index.input
data remove storage cu:value list.index._circularMinResult
data remove storage cu:value list.index._circularMaxResult
scoreboard players reset #value.list.index.start cu
scoreboard players reset #value.list.index.end cu
scoreboard players reset #value.list.index.arrange cu
scoreboard players reset #value.list.index.circular cu
scoreboard players reset #value.list.index._min cu
scoreboard players reset #value.list.index._max cu
scoreboard players reset #value.list.index._listLength1 cu
scoreboard players reset #value.list.index._listLength2 cu
scoreboard players reset #value.list.index._trueCircular cu
scoreboard players reset #value.list.index._reverseResult cu
scoreboard players reset #value.list.index._circularAppend cu
