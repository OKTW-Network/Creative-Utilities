execute if score #data.digit.easy_2_digit_hexadecimal.Option.pre_process cu-io matches 0 run return run function cu:data/digit/easy_2_digit_hexadecimal/_func/validate
execute if score #data.digit.easy_2_digit_hexadecimal.Option.pre_process cu-io matches 1 run return run function cu:data/digit/easy_2_digit_hexadecimal/_func/limit
execute if score #data.digit.easy_2_digit_hexadecimal.Option.pre_process cu-io matches 2 run return run function cu:data/digit/easy_2_digit_hexadecimal/_func/remainder
return fail
