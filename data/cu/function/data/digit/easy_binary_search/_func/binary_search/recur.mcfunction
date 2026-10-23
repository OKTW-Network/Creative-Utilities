scoreboard players operation #2 cu-internal = #data.digit.easy_binary_search.right_index cu-internal
scoreboard players operation #2 cu-internal -= #data.digit.easy_binary_search.left_index cu-internal
execute if score #2 cu-internal matches ..1 run return run function cu:data/digit/easy_binary_search/_func/binary_search/conclude
scoreboard players operation #2 cu-internal /= #1 cu-internal
execute store result storage cu:internal dummy.index int 1 store result score #data.digit.easy_binary_search.mid_index cu-internal run scoreboard players operation #2 cu-internal += #data.digit.easy_binary_search.left_index cu-internal
execute store result score #data.digit.easy_binary_search.mid_value cu-internal run function cu:data/digit/easy_binary_search/_func/lazy_index_source with storage cu:internal dummy
execute if score #data.digit.easy_binary_search.Input.target cu-io = #data.digit.easy_binary_search.mid_value cu-internal run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exact_mid
execute if score #data.digit.easy_binary_search.mid_value cu-internal < #data.digit.easy_binary_search.Input.target cu-io run scoreboard players operation #data.digit.easy_binary_search.left_index cu-internal = #data.digit.easy_binary_search.mid_index cu-internal
execute if score #data.digit.easy_binary_search.Input.target cu-io < #data.digit.easy_binary_search.mid_value cu-internal run scoreboard players operation #data.digit.easy_binary_search.right_index cu-internal = #data.digit.easy_binary_search.mid_index cu-internal
function cu:data/digit/easy_binary_search/_func/binary_search/recur
