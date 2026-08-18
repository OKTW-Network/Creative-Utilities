data modify storage cu:internal dummy set value {index:0}
execute store result storage cu:internal dummy.index int 1 run scoreboard players get #data.digit.easy_binary_search.left_index cu-internal
execute store result score #2 cu-internal run function cu:data/digit/easy_binary_search/_func/lazy_index_source with storage cu:internal dummy
scoreboard players operation #1 cu-internal = #data.digit.easy_binary_search.Input.target cu-io
scoreboard players operation #1 cu-internal -= #2 cu-internal
data modify storage cu:internal dummy set value {index:-1}
execute store result storage cu:internal dummy.index int 1 run scoreboard players get #data.digit.easy_binary_search.right_index cu-internal
execute store result score #2 cu-internal run function cu:data/digit/easy_binary_search/_func/lazy_index_source with storage cu:internal dummy
scoreboard players operation #2 cu-internal -= #data.digit.easy_binary_search.Input.target cu-io
execute if score #2 cu-internal < #1 cu-internal run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_right
execute if score #1 cu-internal = #2 cu-internal if score #data.digit.easy_binary_search.Option.vague cu-io matches 4 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_right
function cu:data/digit/easy_binary_search/_func/binary_search/result_left
