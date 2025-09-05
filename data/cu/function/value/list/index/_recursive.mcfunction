scoreboard players set #value.list.index._keepRecursive cu 0

execute unless score #value.list.index._min cu matches 0 run scoreboard players add #value.list.index._keepRecursive cu 1
execute if score #value.list.index._min cu matches 0 if score #value.list.index.start cu = #value.list.index.end cu run scoreboard players set #value.list.index._keepRecursive cu 0
execute if score #value.list.index._keepRecursive cu matches 1 unless score #value.list.index.start cu = #value.list.index.end cu if score #value.list.index.circular cu matches 1 run function cu:value/list/index/_result/circular/from_input_head
execute if score #value.list.index._keepRecursive cu matches 1 run data remove storage cu:value list.index.input[0]
execute if score #value.list.index._keepRecursive cu matches 1 run scoreboard players remove #value.list.index._min cu 1
execute if score #value.list.index._keepRecursive cu matches 1 run scoreboard players remove #value.list.index._max cu 1
execute if score #value.list.index._keepRecursive cu matches 1 run scoreboard players remove #value.list.index._listIndexMax cu 1

execute unless score #value.list.index._max cu = #value.list.index._listIndexMax cu run scoreboard players add #value.list.index._keepRecursive cu 2
execute if score #value.list.index._max cu = #value.list.index._listIndexMax cu if score #value.list.index.start cu = #value.list.index.end cu run scoreboard players set #value.list.index._keepRecursive cu 0
execute if score #value.list.index._keepRecursive cu matches 2.. unless score #value.list.index.start cu = #value.list.index.end cu if score #value.list.index.circular cu matches 1 run function cu:value/list/index/_result/circular/from_input_tail
execute if score #value.list.index._keepRecursive cu matches 2.. run data remove storage cu:value list.index.input[-1]
execute if score #value.list.index._keepRecursive cu matches 2.. run scoreboard players remove #value.list.index._listIndexMax cu 1

execute if score #value.list.index._keepRecursive cu matches 0 run function cu:value/list/index/_result/main

execute if score #value.list.index._keepRecursive cu matches 1.. if data storage cu:value list.index.input[0] run function cu:value/list/index/_recursive
