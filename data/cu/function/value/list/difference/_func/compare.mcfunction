data modify storage cu:io value.different.Input.1 set from storage cu:io value.list.difference.Input.1[0]
data modify storage cu:io value.different.Input.2 set from storage cu:io value.list.difference.Input.2[0]
function cu:value/different/main
execute store result storage cu:io value.list.difference.Result[-1].diff int 1 run scoreboard players get #value.different.Result cu-io
execute if score #value.different.Result cu-io matches 0 run data modify storage cu:io value.list.difference.Result[-1].value set from storage cu:io value.list.difference.Input.1[0]
execute if score #value.different.Result cu-io matches 1 run data modify storage cu:io value.list.difference.Result[-1].value append from storage cu:io value.list.difference.Input.1[0]
execute if score #value.different.Result cu-io matches 1 run data modify storage cu:io value.list.difference.Result[-1].value append from storage cu:io value.list.difference.Input.2[0]
