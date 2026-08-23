scoreboard players set #1 cu-internal -16
scoreboard players operation #data.digit.easy_convert_to_1_digit_hexadecimal.Input cu-io > #1 cu-internal
scoreboard players set #1 cu-internal 15
scoreboard players operation #data.digit.easy_convert_to_1_digit_hexadecimal.Input cu-io < #1 cu-internal
return 1
