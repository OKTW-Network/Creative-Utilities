execute if function cu:data/digit/easy_binary_search/_func/binary_search/try_result_left_exact run return 0
execute if function cu:data/digit/easy_binary_search/_func/binary_search/try_result_right_exact run return 0
execute if score #data.digit.easy_binary_search.Option.vague cu-io matches 1 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_left
execute if score #data.digit.easy_binary_search.Option.vague cu-io matches 2 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_right
execute if score #data.digit.easy_binary_search.Option.vague cu-io matches 3..4 run return run function cu:data/digit/easy_binary_search/_func/binary_search/result_nearest
