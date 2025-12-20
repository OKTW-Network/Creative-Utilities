data modify storage cu:internal dummy set value {string1:'',string2:'',string3:''}
data modify storage cu:internal dummy.string1 set from storage cu:io data.string.easy_join.Result
data modify storage cu:internal dummy.string2 set from storage cu:io data.string.easy_join.Option.separator
data modify storage cu:internal dummy.string3 set from storage cu:io data.string.easy_join.Input[0]
data remove storage cu:io data.string.easy_join.Input[0]
scoreboard players set #1 temp 0
execute store success score #1 temp run function cu:data/string/lazy_join3 with storage cu:internal dummy
execute unless score #1 temp matches 0 run data modify storage cu:io data.string.easy_join.Result set from storage cu:io data.string.lazy_join3.Result

execute if data storage cu:io data.string.easy_join.Input[0] run function cu:data/string/easy_join/_func