data modify storage cu:io value.list.duplicate.Result append from storage cu:io value.list.duplicate.Input
scoreboard players remove #value.list.duplicate.recur_countdown cu-internal 1
execute if score #value.list.duplicate.recur_countdown cu-internal matches 1.. run function cu:value/list/duplicate/_func
