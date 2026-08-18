execute if score #data.easy_convert_to_hexadecimal_uuid.2_hex_array.step cu-internal matches 0 run function cu:data/easy_convert_to_hexadecimal_uuid/_func/resolve_to_2_hex_array/step_0
data modify storage cu:internal dummy set value {value:0}
scoreboard players set #1 cu-internal 0
scoreboard players operation #1 cu-internal = #data.easy_convert_to_hexadecimal_uuid.2_hex_array.int cu-internal
scoreboard players set #2 cu-internal 256
scoreboard players operation #data.easy_convert_to_hexadecimal_uuid.2_hex_array.int cu-internal /= #2 cu-internal
execute store result storage cu:internal dummy.value int 1 run scoreboard players operation #1 cu-internal %= #2 cu-internal
function cu:data/digit/lazy_2_digit_hexadecimal with storage cu:internal dummy
data modify storage cu:internal data.easy_convert_to_hexadecimal_uuid.2_hex_array prepend from storage cu:io data.digit.lazy_2_digit_hexadecimal.Result

scoreboard players add #data.easy_convert_to_hexadecimal_uuid.2_hex_array.step cu-internal 1
scoreboard players set #1 cu-internal 4
scoreboard players operation #data.easy_convert_to_hexadecimal_uuid.2_hex_array.step cu-internal %= #1 cu-internal

scoreboard players remove #data.easy_convert_to_hexadecimal_uuid.2_hex_array.recur_countdown cu-internal 1
execute if score #data.easy_convert_to_hexadecimal_uuid.2_hex_array.recur_countdown cu-internal matches 1.. run function cu:data/easy_convert_to_hexadecimal_uuid/_func/resolve_to_2_hex_array/recur
