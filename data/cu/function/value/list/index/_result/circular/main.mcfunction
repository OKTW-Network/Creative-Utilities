function cu:value/list/index/_result/circular/from_input_head
function cu:value/list/index/_result/circular/from_input_tail
data modify storage cu:value list.index.result set from storage cu:value list.index._circularMinResult
scoreboard players set #value.list.index._circularAppend cu 1
execute if score #value.list.index.arrange cu matches 1 if score #value.list.index.start cu > #value.list.index.end cu run scoreboard players set #value.list.index._circularAppend cu 0
execute if score #value.list.index._circularAppend cu matches 1 run data modify storage cu:value list.index.result append from storage cu:value list.index._circularMaxResult[]
execute if score #value.list.index._circularAppend cu matches 0 run data modify storage cu:value list.index.result prepend from storage cu:value list.index._circularMaxResult[]
