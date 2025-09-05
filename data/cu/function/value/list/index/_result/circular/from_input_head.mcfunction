scoreboard players set #value.list.index._circularAppend cu 1
execute if score #value.list.index.arrange cu matches 1 if score #value.list.index.start cu < #value.list.index.end cu run scoreboard players set #value.list.index._circularAppend cu 0
execute if score #value.list.index._circularAppend cu matches 1 run data modify storage cu:value list.index._circularMinResult append from storage cu:value list.index.input[0]
execute if score #value.list.index._circularAppend cu matches 0 run data modify storage cu:value list.index._circularMinResult prepend from storage cu:value list.index.input[0]
