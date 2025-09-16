scoreboard players set #1 temp 1
execute store result storage cu:io data.list.difference.Result[-1].diff int 1 run scoreboard players operation #1 temp += #data.list.difference.input_exist cu-internal
execute if score #data.list.difference.input_exist cu-internal matches 1 run data modify storage cu:io data.list.difference.Result[-1].value set from storage cu:io data.list.difference.Input.1[0]
execute if score #data.list.difference.input_exist cu-internal matches 2 run data modify storage cu:io data.list.difference.Result[-1].value set from storage cu:io data.list.difference.Input.2[0]
