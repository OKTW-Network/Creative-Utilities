execute unless score #value.list.index.start cu = #value.list.index.end cu unless score #value.list.index.circular cu matches 1 run function cu:value/list/index/_result/normal
execute if score #value.list.index.start cu = #value.list.index.end cu run function cu:value/list/index/_result/pick
execute unless score #value.list.index.start cu = #value.list.index.end cu if score #value.list.index.circular cu matches 1 run function cu:value/list/index/_result/circular/main
