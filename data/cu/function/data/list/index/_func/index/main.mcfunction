scoreboard players set #data.list.index.keep_recur cu-internal 0

execute unless score #data.list.index.head_countdown cu-internal matches 0 run function cu:data/list/index/_func/index/head
execute unless score #data.list.index.tail_target cu-internal = #data.list.index.max_index cu-internal run function cu:data/list/index/_func/index/tail

execute if score #data.list.index.keep_recur cu-internal matches 0 run function cu:data/list/index/_func/result/main
execute if score #data.list.index.keep_recur cu-internal matches 1 if data storage cu:io data.list.index.Input[0] run function cu:data/list/index/_func/index/main