execute store result score #data.digit.easy_binary_search.left_value cu-internal run data get storage cu:io data.digit.easy_binary_search.Input.source[0]
execute if score #data.digit.easy_binary_search.Input.target cu-io < #data.digit.easy_binary_search.left_value cu-internal run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exceed_head
execute if score #data.digit.easy_binary_search.Input.target cu-io = #data.digit.easy_binary_search.left_value cu-internal run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exact_left
execute store result score #data.digit.easy_binary_search.right_value cu-internal run data get storage cu:io data.digit.easy_binary_search.Input.source[-1]
execute if score #data.digit.easy_binary_search.right_value cu-internal < #data.digit.easy_binary_search.Input.target cu-io run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exceed_tail
execute if score #data.digit.easy_binary_search.right_value cu-internal = #data.digit.easy_binary_search.Input.target cu-io run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exact_right
scoreboard players set #data.digit.easy_binary_search.left_index cu-internal 0
scoreboard players set #data.digit.easy_binary_search.right_index cu-internal 0
execute store result score #data.digit.easy_binary_search.right_index cu-internal run data get storage cu:io data.digit.easy_binary_search.Input.source
scoreboard players remove #data.digit.easy_binary_search.right_index cu-internal 1
scoreboard players set #1 cu-internal 2
data modify storage cu:internal dummy set value {index:0}
function cu:data/digit/easy_binary_search/_func/binary_search/recur
