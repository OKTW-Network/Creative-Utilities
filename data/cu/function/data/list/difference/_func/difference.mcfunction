data modify storage cu:io data.list.difference.Result append value {index:'INVALID',diff:'INVALID'}
execute store result storage cu:io data.list.difference.Result[-1].index int 1 run scoreboard players get #data.list.difference.index cu-internal
scoreboard players set #data.list.difference.input_exist cu-internal 0
execute if data storage cu:io data.list.difference.Input.1[0] run scoreboard players add #data.list.difference.input_exist cu-internal 1
execute if data storage cu:io data.list.difference.Input.2[0] run scoreboard players add #data.list.difference.input_exist cu-internal 2
execute if score #data.list.difference.input_exist cu-internal matches 3 run function cu:data/list/difference/_func/compare
execute if score #data.list.difference.input_exist cu-internal matches 1..2 run function cu:data/list/difference/_func/excess
data remove storage cu:io data.list.difference.Input.1[0]
data remove storage cu:io data.list.difference.Input.2[0]
scoreboard players remove #data.list.difference.recur_countdown cu-internal 1
scoreboard players add #data.list.difference.index cu-internal 1
execute if score #data.list.difference.recur_countdown cu-internal matches 1.. run function cu:data/list/difference/_func/difference
