scoreboard players reset #value.string.length.Result cu-io
data modify storage cu:internal dummy set value ""
data modify storage cu:internal dummy set string storage cu:io value.string.length.Input
data modify storage cu:io value.string.length.Input set from storage cu:internal dummy

execute store result score #value.string.length.Result cu-io run data get storage cu:io value.string.length.Input

return run scoreboard players get #value.string.length.Result cu-io
