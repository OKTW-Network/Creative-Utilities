execute if score #data.digit.easy_binary_search.Option.vague cu-io matches 1 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_left
execute if score #data.digit.easy_binary_search.Option.vague cu-io matches 2 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_right
execute if score #data.digit.easy_binary_search.Option.vague cu-io matches 3..4 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_nearest
return fail
