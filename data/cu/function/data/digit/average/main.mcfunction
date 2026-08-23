scoreboard players reset #data.digit.average.Result cu-io
# Option.method
#  0 : Sum then divide.
#  1 : Divide then sum. Prevent overflow, but increase the load.
execute unless score #data.digit.average.Option.method cu-io matches 0..1 run scoreboard players set #data.digit.average.Option.method cu-io 0

execute store result score #data.digit.average.count cu-internal if data storage cu:io data.digit.average.Input[]
execute if score #data.digit.average.count cu-internal matches 1.. run function cu:data/digit/average/_func/average/main

data remove storage cu:io data.digit.average.Input
data remove storage cu:internal data.digit.average
scoreboard players reset #data.digit.average.Option.method cu-io
scoreboard players reset #data.digit.average.count cu-internal
scoreboard players reset #data.digit.average.remainder_accumulator cu-internal
scoreboard players reset #data.digit.average.compensation cu-internal

return run scoreboard players get #data.digit.average.Result cu-io
