function cu:data/list/index/_func/result/circular/from_input_head
function cu:data/list/index/_func/result/circular/from_input_tail
data modify storage cu:io data.list.index.Result set from storage cu:internal data.list.index.circular_head_result
execute if score #data.list.index.Option.arrange cu-io matches 1 if score #data.list.index.Option.start cu-io > #data.list.index.Option.end cu-io run return run data modify storage cu:io data.list.index.Result prepend from storage cu:internal data.list.index.circular_tail_result[]
return run data modify storage cu:io data.list.index.Result append from storage cu:internal data.list.index.circular_tail_result[]
