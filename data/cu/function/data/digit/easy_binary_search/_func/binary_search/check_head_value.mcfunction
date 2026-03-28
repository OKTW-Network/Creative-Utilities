execute store result score #1 temp run function cu:data/digit/easy_binary_search/_func/lazy_index_source {index:0}
execute if score #1 temp = #data.digit.easy_binary_search.Input.target cu-io run return 1
return fail
