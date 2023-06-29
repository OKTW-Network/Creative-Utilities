data modify storage cu:value list.duplicate.result append from storage cu:value list.duplicate.input
scoreboard players remove #value.list.duplicate.count cu 1

execute if score #value.list.duplicate.count cu matches 1.. run function cu:value/list/duplicate/_recursive
