execute unless score #data.list.index.reverse_direction cu-internal matches 1 run data modify storage cu:io data.list.index.Result set from storage cu:io data.list.index.Input
execute if score #data.list.index.reverse_direction cu-internal matches 1 run function cu:data/list/index/_func/result/from_input/reverse
execute if score #data.list.index.Option.result_method cu-io matches 0 run return 1
data modify storage cu:internal dummy set value {index:[],remnant:[]}
data modify storage cu:internal dummy.index set from storage cu:io data.list.index.Result
data remove storage cu:io data.list.index.Result
execute if score #data.list.index.Option.result_method cu-io matches 1 run data modify storage cu:internal dummy.remnant append from storage cu:internal data.list.index.head
execute if score #data.list.index.Option.result_method cu-io matches 1 run data modify storage cu:internal dummy.remnant append from storage cu:internal data.list.index.tail
execute if score #data.list.index.Option.result_method cu-io matches 2 run data modify storage cu:internal dummy.remnant append from storage cu:internal data.list.index.head[]
execute if score #data.list.index.Option.result_method cu-io matches 2 run data modify storage cu:internal dummy.remnant append from storage cu:internal data.list.index.tail[]
data modify storage cu:io data.list.index.Result set from storage cu:internal dummy