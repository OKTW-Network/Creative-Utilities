scoreboard players set #value.list.index._keepRecursive cu 0

execute unless score #value.list.index.min cu matches 0 run scoreboard players add #value.list.index._keepRecursive cu 1
execute if score #value.list.index._keepRecursive cu matches 1 run data remove storage cu:value list.index.input[0]
execute if score #value.list.index._keepRecursive cu matches 1 run scoreboard players remove #value.list.index.min cu 1
execute if score #value.list.index._keepRecursive cu matches 1 run scoreboard players remove #value.list.index.max cu 1
execute if score #value.list.index._keepRecursive cu matches 1 run scoreboard players remove #value.list.index._indexMax cu 1

execute unless score #value.list.index.max cu = #value.list.index._indexMax cu run scoreboard players add #value.list.index._keepRecursive cu 2
execute if score #value.list.index._keepRecursive cu matches 2.. run data remove storage cu:value list.index.input[-1]
execute if score #value.list.index._keepRecursive cu matches 2.. run scoreboard players remove #value.list.index._indexMax cu 1

execute if score #value.list.index._keepRecursive cu matches 1.. if data storage cu:value list.index.input[0] run function cu:value/list/index/_recursive-reduce
