data modify storage cu:io data.list.reverse.Result prepend from storage cu:io data.list.reverse.Input[0]
data remove storage cu:io data.list.reverse.Input[0]
execute if data storage cu:io data.list.reverse.Input[0] run function cu:data/list/reverse/_func
