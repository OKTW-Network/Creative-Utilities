scoreboard players reset #value.digit.average.Result cu-io

execute store result score #value.digit.average.count cu-internal if data storage cu:io value.digit.average.Input[]
execute if score #value.digit.average.count cu-internal matches 1.. run function cu:value/digit/average/_func

data modify storage cu:io value.digit.average.Input set value []
scoreboard players reset #value.digit.average.count cu-internal

return run execute unless score #value.digit.average.Result cu-io matches 0 run scoreboard players get #value.digit.average.Result cu-io
