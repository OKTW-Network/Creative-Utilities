data modify storage cu:internal dummy set value {index:0}
execute store result storage cu:internal dummy.index int 1 run scoreboard players get #data.digit.easy_binary_search.left_index cu-internal
execute store result score #2 temp run function cu:data/digit/easy_binary_search/_func/lazy_index_source with storage cu:internal dummy
scoreboard players operation #1 temp = #data.digit.easy_binary_search.Input.target cu-io
scoreboard players operation #1 temp -= #2 temp
data modify storage cu:internal dummy set value {index:-1}
execute store result storage cu:internal dummy.index int 1 run scoreboard players get #data.digit.easy_binary_search.right_index cu-internal
execute store result score #2 temp run function cu:data/digit/easy_binary_search/_func/lazy_index_source with storage cu:internal dummy
scoreboard players operation #2 temp -= #data.digit.easy_binary_search.Input.target cu-io
execute if score #2 temp < #1 temp run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_right
execute if score #1 temp = #2 temp if score #data.digit.easy_binary_search.Option.vague cu-io matches 4 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_right
function cu:data/digit/easy_binary_search/_func/binary_search/result_left
