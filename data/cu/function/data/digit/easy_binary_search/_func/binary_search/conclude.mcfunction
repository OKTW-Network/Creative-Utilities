execute store result storage cu:internal dummy.index int 1 run scoreboard players get #data.digit.easy_binary_search.left_index cu-internal
execute store result score #data.digit.easy_binary_search.left_value cu-internal run function cu:data/digit/easy_binary_search/_func/lazy_index_source with storage cu:internal dummy
execute store result storage cu:internal dummy.index int 1 run scoreboard players get #data.digit.easy_binary_search.right_index cu-internal
execute store result score #data.digit.easy_binary_search.right_value cu-internal run function cu:data/digit/easy_binary_search/_func/lazy_index_source with storage cu:internal dummy
scoreboard players operation #1 cu-internal = #data.digit.easy_binary_search.Option.vague cu-io
execute if score #data.digit.easy_binary_search.left_value cu-internal = #data.digit.easy_binary_search.Input.target cu-io run scoreboard players set #1 cu-internal 1
execute if score #data.digit.easy_binary_search.right_value cu-internal = #data.digit.easy_binary_search.Input.target cu-io run scoreboard players set #1 cu-internal 2
execute if score #1 cu-internal matches 0 run return fail
execute if score #1 cu-internal matches 1 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exact_left
execute if score #1 cu-internal matches 2 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exact_right
function cu:data/digit/easy_binary_search/_func/binary_search/result_nearest
