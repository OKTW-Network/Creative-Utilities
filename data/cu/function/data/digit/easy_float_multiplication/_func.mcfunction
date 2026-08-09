execute if data storage cu:internal data.digit.easy_float_multiplication{product:0.0f} run return 1

data modify storage cu:internal dummy set value {dividend:1f,divisor:1f}
data modify storage cu:internal dummy.divisor set from storage cu:io data.digit.easy_float_multiplication.Input[0]
data remove storage cu:io data.digit.easy_float_multiplication.Input[0]
execute store success score #1 temp summon minecraft:block_display run function cu:data/digit/_func/display_entity/lazy_float_division with storage cu:internal dummy
execute if score #1 temp matches 0 run return run function cu:data/digit/easy_float_multiplication/_return_fail
data modify storage cu:internal dummy set value {dividend:1f,divisor:1f}
data modify storage cu:internal dummy.dividend set from storage cu:internal data.digit.easy_float_multiplication.product
data modify storage cu:internal dummy.divisor set from storage cu:internal data.digit.display_entity.lazy_float_division.Result
execute store success score #1 temp summon minecraft:block_display run function cu:data/digit/_func/display_entity/lazy_float_division with storage cu:internal dummy
execute if score #1 temp matches 0 run return run function cu:data/digit/easy_float_multiplication/_return_fail
data modify storage cu:internal data.digit.easy_float_multiplication.product set from storage cu:internal data.digit.display_entity.lazy_float_division.Result

execute if data storage cu:io data.digit.easy_float_multiplication.Input[0] run return run function cu:data/digit/easy_float_multiplication/_func
return 1
