data modify storage cu:internal dummy set value {index:0}
execute store result storage cu:internal dummy.index int 1 run scoreboard players get #data.digit.easy_binary_search.left_index cu-internal
execute store result score #1 cu-internal run function cu:data/digit/easy_binary_search/_func/lazy_index_source with storage cu:internal dummy
execute unless score #1 cu-internal = #data.digit.easy_binary_search.Input.target cu-io run return fail
execute store result storage cu:io data.digit.easy_binary_search.Result.index int 1 run scoreboard players get #data.digit.easy_binary_search.left_index cu-internal
execute store result storage cu:io data.digit.easy_binary_search.Result.value int 1 run scoreboard players get #1 cu-internal
return 1
