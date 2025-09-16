data modify storage cu:io data.different.Input.1 set from storage cu:io data.list.difference.Input.1[0]
data modify storage cu:io data.different.Input.2 set from storage cu:io data.list.difference.Input.2[0]
function cu:data/different/main
execute store result storage cu:io data.list.difference.Result[-1].diff int 1 run scoreboard players get #data.different.Result cu-io
execute if score #data.different.Result cu-io matches 0 run data modify storage cu:io data.list.difference.Result[-1].value set from storage cu:io data.list.difference.Input.1[0]
execute if score #data.different.Result cu-io matches 1 run data modify storage cu:io data.list.difference.Result[-1].value append from storage cu:io data.list.difference.Input.1[0]
execute if score #data.different.Result cu-io matches 1 run data modify storage cu:io data.list.difference.Result[-1].value append from storage cu:io data.list.difference.Input.2[0]
