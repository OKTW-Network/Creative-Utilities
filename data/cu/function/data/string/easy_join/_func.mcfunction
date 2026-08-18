data modify storage cu:internal dummy set value {string1:'',string2:'',string3:''}
data modify storage cu:internal dummy.string1 set from storage cu:io data.string.easy_join.Result
execute if data storage cu:io data.string.easy_join.Result run data modify storage cu:internal dummy.string2 set from storage cu:io data.string.easy_join.Option.separator
data modify storage cu:internal dummy.string3 set from storage cu:io data.string.easy_join.Input[0]
data remove storage cu:io data.string.easy_join.Input[0]
execute store success score #1 cu-internal run function cu:data/string/lazy_join3 with storage cu:internal dummy
execute if score #1 cu-internal matches 1 run data modify storage cu:io data.string.easy_join.Result set from storage cu:io data.string.lazy_join3.Result

execute if data storage cu:io data.string.easy_join.Input[0] run function cu:data/string/easy_join/_func
