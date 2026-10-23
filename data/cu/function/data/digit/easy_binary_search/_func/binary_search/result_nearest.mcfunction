scoreboard players operation #1 cu-internal = #data.digit.easy_binary_search.Input.target cu-io
scoreboard players operation #1 cu-internal -= #data.digit.easy_binary_search.left_value cu-internal
scoreboard players operation #2 cu-internal = #data.digit.easy_binary_search.right_value cu-internal
scoreboard players operation #2 cu-internal -= #data.digit.easy_binary_search.Input.target cu-io
scoreboard players operation #3 cu-internal = #data.digit.easy_binary_search.Option.vague cu-io
execute if score #1 cu-internal < #2 cu-internal run scoreboard players remove #3 cu-internal 1
execute if score #1 cu-internal matches ..-1 run scoreboard players add #3 cu-internal 2
execute if score #1 cu-internal > #2 cu-internal run scoreboard players add #3 cu-internal 1
execute if score #2 cu-internal matches ..-1 run scoreboard players remove #3 cu-internal 2
execute if score #3 cu-internal matches ..3 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exact_left
function cu:data/digit/easy_binary_search/_func/binary_search/result_exact_right
