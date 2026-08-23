execute store result score #1 cu-internal store result score #2 cu-internal run data get storage cu:io data.digit.average.Input[0]
data remove storage cu:io data.digit.average.Input[0]
data modify storage cu:internal data.digit.average.quotient_list append value 0
execute store result storage cu:internal data.digit.average.quotient_list[-1] int 1 run scoreboard players operation #1 cu-internal /= #data.digit.average.count cu-internal
scoreboard players operation #2 cu-internal %= #data.digit.average.count cu-internal
execute if score #2 cu-internal matches 1.. run function cu:data/digit/average/_func/average/method_1/recur_divide/compensation
execute if data storage cu:io data.digit.average.Input[0] run function cu:data/digit/average/_func/average/method_1/recur_divide/main
