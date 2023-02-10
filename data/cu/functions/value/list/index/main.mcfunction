execute unless score #value.list.index.min cu matches -2147483648..2147483647 run scoreboard players set #value.list.index.min cu 0
execute unless score #value.list.index.max cu matches -2147483648..2147483647 run scoreboard players operation #value.list.index.max cu = #value.list.index.min cu
execute if score #value.list.index.min cu matches ..-1 run scoreboard players operation #value.list.index.min cu *= #-1 num
execute if score #value.list.index.max cu matches ..-1 run scoreboard players operation #value.list.index.max cu *= #-1 num
execute if score #value.list.index.min cu > #value.list.index.max cu run scoreboard players operation #value.list.index.min cu >< #value.list.index.max cu
execute store result score #value.list.index._indexMax cu run data get storage cu:value list.index.input
scoreboard players remove #value.list.index._indexMax cu 1
scoreboard players operation #value.list.index.min cu < #value.list.index._indexMax cu
scoreboard players operation #value.list.index.max cu < #value.list.index._indexMax cu

execute if data storage cu:value list.index.input[0] run function cu:value/list/index/_recursive-reduce

execute if data storage cu:value list.index.result run data remove storage cu:value list.index.result
execute if data storage cu:value list.index.input[0] run data modify storage cu:value list.index.result set from storage cu:value list.index.input

data remove storage cu:value list.index.input
scoreboard players set #value.list.index.min cu 0
scoreboard players reset #value.list.index.max cu
