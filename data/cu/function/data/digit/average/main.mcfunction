scoreboard players set #data.digit.average.FUNCTION_STAGE cu-io 0
scoreboard players reset #data.digit.average.Result cu-io
execute unless data storage cu:io data.digit.average.Input[0] run function cu:data/digit/average/_return_fail
# Option.method
#  0 : Sum then divide.
#  1 : Divide then sum. Prevent overflow, but increase the load.
execute unless score #data.digit.average.Option.method cu-io matches 0..1 run scoreboard players set #data.digit.average.Option.method cu-io 0

scoreboard players set #data.digit.average.FUNCTION_STAGE cu-io 1
execute store result score #data.digit.average.count cu-internal run data get storage cu:io data.digit.average.Input
function cu:data/digit/average/_func/average/main

scoreboard players set #data.digit.average.FUNCTION_STAGE cu-io -1
function cu:data/digit/average/_reset_function

return run scoreboard players get #data.digit.average.Result cu-io
