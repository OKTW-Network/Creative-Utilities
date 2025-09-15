data modify storage cu:io value.list.difference.Result append value {index:'INVALID',diff:'INVALID'}
execute store result storage cu:io value.list.difference.Result[-1].index int 1 run scoreboard players get #value.list.difference.index cu-internal
scoreboard players set #value.list.difference.input_exist cu-internal 0
execute if data storage cu:io value.list.difference.Input.1[0] run scoreboard players add #value.list.difference.input_exist cu-internal 1
execute if data storage cu:io value.list.difference.Input.2[0] run scoreboard players add #value.list.difference.input_exist cu-internal 2
execute if score #value.list.difference.input_exist cu-internal matches 3 run function cu:value/list/difference/_func/compare
execute if score #value.list.difference.input_exist cu-internal matches 1..2 run function cu:value/list/difference/_func/excess
data remove storage cu:io value.list.difference.Input.1[0]
data remove storage cu:io value.list.difference.Input.2[0]
scoreboard players remove #value.list.difference.recur_countdown cu-internal 1
scoreboard players add #value.list.difference.index cu-internal 1
execute if score #value.list.difference.recur_countdown cu-internal matches 1.. run function cu:value/list/difference/_func/difference
