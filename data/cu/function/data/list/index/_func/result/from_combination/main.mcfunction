execute if score #data.list.index.reverse_combination cu-internal matches 0 run function cu:data/list/index/_func/result/from_combination/head_tail
execute if score #data.list.index.reverse_combination cu-internal matches 1 run function cu:data/list/index/_func/result/from_combination/tail_head
execute if score #data.list.index.Option.result_method cu-io matches 0 run return 1
data modify storage cu:internal dummy set value {index:[],remnant:[]}
data modify storage cu:internal dummy.index set from storage cu:io data.list.index.Result
data remove storage cu:io data.list.index.Result
execute if score #data.list.index.Option.result_method cu-io matches 1 run data modify storage cu:internal dummy.remnant append from storage cu:io data.list.index.Input
execute if score #data.list.index.Option.result_method cu-io matches 2 run data modify storage cu:internal dummy.remnant append from storage cu:io data.list.index.Input[]
data modify storage cu:io data.list.index.Result set from storage cu:internal dummy