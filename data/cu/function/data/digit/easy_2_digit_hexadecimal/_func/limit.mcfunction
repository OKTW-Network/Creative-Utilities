scoreboard players set #1 temp -256
scoreboard players operation #data.digit.easy_2_digit_hexadecimal.Input cu-io > #1 temp
scoreboard players set #1 temp 255
scoreboard players operation #data.digit.easy_2_digit_hexadecimal.Input cu-io < #1 temp
return 1
