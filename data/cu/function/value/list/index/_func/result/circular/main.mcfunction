function cu:value/list/index/_func/result/circular/from_input_head
function cu:value/list/index/_func/result/circular/from_input_tail
data modify storage cu:io value.list.index.Result set from storage cu:internal value.list.index.circular_head_result
execute if score #value.list.index.Option.arrange cu-io matches 1 if score #value.list.index.Option.start cu-io > #value.list.index.Option.end cu-io run return run data modify storage cu:io value.list.index.Result prepend from storage cu:internal value.list.index.circular_tail_result[]
return run data modify storage cu:io value.list.index.Result append from storage cu:internal value.list.index.circular_tail_result[]
