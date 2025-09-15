execute if score #value.list.index.Option.arrange cu-io matches 1 if score #value.list.index.Option.start cu-io > #value.list.index.Option.end cu-io run return run function cu:value/list/index/_func/result/from_reverse_input
return run data modify storage cu:io value.list.index.Result set from storage cu:io value.list.index.Input
