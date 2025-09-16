execute if score #data.list.index.Option.start cu-io = #data.list.index.Option.end cu-io run return run function cu:data/list/index/_func/result/pick
execute if score #data.list.index.Option.circular cu-io matches 0 run return run function cu:data/list/index/_func/result/normal
execute if score #data.list.index.Option.circular cu-io matches 1 run return run function cu:data/list/index/_func/result/circular/main
