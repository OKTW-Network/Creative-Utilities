data remove storage cu:internal dummy
execute store result score #1 temp run data get storage cu:io data.digit.average.Input[0]
data remove storage cu:io data.digit.average.Input[0]
execute store result storage cu:internal dummy int 1 run scoreboard players operation #1 temp /= #data.digit.average.count cu-internal
data modify storage cu:internal data.digit.average.pre_processed append from storage cu:internal dummy
execute if data storage cu:io data.digit.average.Input[0] run function cu:data/digit/average/_func/average/method_1/recur
