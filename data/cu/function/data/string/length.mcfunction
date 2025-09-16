scoreboard players reset #data.string.length.Result cu-io
data modify storage cu:internal dummy set value ""
data modify storage cu:internal dummy set string storage cu:io data.string.length.Input
data modify storage cu:io data.string.length.Input set from storage cu:internal dummy

execute store result score #data.string.length.Result cu-io run data get storage cu:io data.string.length.Input

return run scoreboard players get #data.string.length.Result cu-io
