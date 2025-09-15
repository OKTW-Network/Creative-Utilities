data modify storage cu:io value.list.reverse.Result prepend from storage cu:io value.list.reverse.Input[0]
data remove storage cu:io value.list.reverse.Input[0]
execute if data storage cu:io value.list.reverse.Input[0] run function cu:value/list/reverse/_func
