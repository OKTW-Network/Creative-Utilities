scoreboard players reset #data.digit.average.Result cu-io

execute store result score #data.digit.average.count cu-internal if data storage cu:io data.digit.average.Input[]
execute if score #data.digit.average.count cu-internal matches 1.. run function cu:data/digit/average/_func

data modify storage cu:io data.digit.average.Input set value []
scoreboard players reset #data.digit.average.count cu-internal

return run execute unless score #data.digit.average.Result cu-io matches 0 run scoreboard players get #data.digit.average.Result cu-io
