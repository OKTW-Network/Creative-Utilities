scoreboard players set #data.list.index.keep_recur cu-internal 0

execute unless score #data.list.index.head_countdown cu-internal matches 0 run scoreboard players add #data.list.index.keep_recur cu-internal 1
execute if score #data.list.index.head_countdown cu-internal matches 0 if score #data.list.index.Option.start cu-io = #data.list.index.Option.end cu-io run scoreboard players set #data.list.index.keep_recur cu-internal 0
execute if score #data.list.index.keep_recur cu-internal matches 1 unless score #data.list.index.Option.start cu-io = #data.list.index.Option.end cu-io if score #data.list.index.Option.circular cu-io matches 1 run function cu:data/list/index/_func/result/circular/from_input_head
execute if score #data.list.index.keep_recur cu-internal matches 1 run data remove storage cu:io data.list.index.Input[0]
execute if score #data.list.index.keep_recur cu-internal matches 1 run scoreboard players remove #data.list.index.head_countdown cu-internal 1
execute if score #data.list.index.keep_recur cu-internal matches 1 run scoreboard players remove #data.list.index.tail_countdown cu-internal 1
execute if score #data.list.index.keep_recur cu-internal matches 1 run scoreboard players remove #data.list.index.max_index cu-internal 1

execute unless score #data.list.index.tail_countdown cu-internal = #data.list.index.max_index cu-internal run scoreboard players add #data.list.index.keep_recur cu-internal 2
execute if score #data.list.index.tail_countdown cu-internal = #data.list.index.max_index cu-internal if score #data.list.index.Option.start cu-io = #data.list.index.Option.end cu-io run scoreboard players set #data.list.index.keep_recur cu-internal 0
execute if score #data.list.index.keep_recur cu-internal matches 2.. unless score #data.list.index.Option.start cu-io = #data.list.index.Option.end cu-io if score #data.list.index.Option.circular cu-io matches 1 run function cu:data/list/index/_func/result/circular/from_input_tail
execute if score #data.list.index.keep_recur cu-internal matches 2.. run data remove storage cu:io data.list.index.Input[-1]
execute if score #data.list.index.keep_recur cu-internal matches 2.. run scoreboard players remove #data.list.index.max_index cu-internal 1

execute if score #data.list.index.keep_recur cu-internal matches 0 run function cu:data/list/index/_func/result/main

execute if score #data.list.index.keep_recur cu-internal matches 1.. if data storage cu:io data.list.index.Input[0] run function cu:data/list/index/_func/index
