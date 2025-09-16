execute if score #data.list.index.Option.arrange cu-io matches 1 if score #data.list.index.Option.start cu-io > #data.list.index.Option.end cu-io run return run function cu:data/list/index/_func/result/from_reverse_input
return run data modify storage cu:io data.list.index.Result set from storage cu:io data.list.index.Input
