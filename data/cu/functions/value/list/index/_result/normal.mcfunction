scoreboard players set #value.list.index._reverseResult cu 0
execute if score #value.list.index.arrange cu matches 1 if score #value.list.index.start cu > #value.list.index.end cu run scoreboard players set #value.list.index._reverseResult cu 1
execute if score #value.list.index._reverseResult cu matches 0 run data modify storage cu:value list.index.result set from storage cu:value list.index.input
execute if score #value.list.index._reverseResult cu matches 1 run function cu:value/list/index/_result/from_reverse_input
