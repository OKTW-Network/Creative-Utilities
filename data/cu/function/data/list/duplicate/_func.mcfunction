data modify storage cu:io data.list.duplicate.Result append from storage cu:io data.list.duplicate.Input
scoreboard players remove #data.list.duplicate.recur_countdown cu-internal 1
execute if score #data.list.duplicate.recur_countdown cu-internal matches 1.. run function cu:data/list/duplicate/_func
