scoreboard players set #data.digit.easy_binary_search.left_index cu-internal 0
scoreboard players set #data.digit.easy_binary_search.right_index cu-internal 0
execute store result score #data.digit.easy_binary_search.right_index cu-internal if data storage cu:io data.digit.easy_binary_search.Input.source[]
scoreboard players remove #data.digit.easy_binary_search.right_index cu-internal 1
data modify storage cu:io data.digit.easy_binary_search.Result set value {exceed:0}
execute if score #data.digit.easy_binary_search.left_index cu-internal = #data.digit.easy_binary_search.right_index cu-internal if function cu:data/digit/easy_binary_search/_func/binary_search/check_head_value run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_left
execute store result score #1 temp run data get storage cu:io data.digit.easy_binary_search.Input.source[0]
execute if score #data.digit.easy_binary_search.Input.target cu-io < #1 temp run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exceed_head
execute store result score #1 temp run data get storage cu:io data.digit.easy_binary_search.Input.source[-1]
execute if score #data.digit.easy_binary_search.Input.target cu-io > #1 temp run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_exceed_tail
function cu:data/digit/easy_binary_search/_func/binary_search/recur
