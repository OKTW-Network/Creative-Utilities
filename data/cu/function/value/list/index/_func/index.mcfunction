scoreboard players set #value.list.index.keep_recur cu-internal 0

execute unless score #value.list.index.head_countdown cu-internal matches 0 run scoreboard players add #value.list.index.keep_recur cu-internal 1
execute if score #value.list.index.head_countdown cu-internal matches 0 if score #value.list.index.Option.start cu-io = #value.list.index.Option.end cu-io run scoreboard players set #value.list.index.keep_recur cu-internal 0
execute if score #value.list.index.keep_recur cu-internal matches 1 unless score #value.list.index.Option.start cu-io = #value.list.index.Option.end cu-io if score #value.list.index.Option.circular cu-io matches 1 run function cu:value/list/index/_func/result/circular/from_input_head
execute if score #value.list.index.keep_recur cu-internal matches 1 run data remove storage cu:io value.list.index.Input[0]
execute if score #value.list.index.keep_recur cu-internal matches 1 run scoreboard players remove #value.list.index.head_countdown cu-internal 1
execute if score #value.list.index.keep_recur cu-internal matches 1 run scoreboard players remove #value.list.index.tail_countdown cu-internal 1
execute if score #value.list.index.keep_recur cu-internal matches 1 run scoreboard players remove #value.list.index.max_index cu-internal 1

execute unless score #value.list.index.tail_countdown cu-internal = #value.list.index.max_index cu-internal run scoreboard players add #value.list.index.keep_recur cu-internal 2
execute if score #value.list.index.tail_countdown cu-internal = #value.list.index.max_index cu-internal if score #value.list.index.Option.start cu-io = #value.list.index.Option.end cu-io run scoreboard players set #value.list.index.keep_recur cu-internal 0
execute if score #value.list.index.keep_recur cu-internal matches 2.. unless score #value.list.index.Option.start cu-io = #value.list.index.Option.end cu-io if score #value.list.index.Option.circular cu-io matches 1 run function cu:value/list/index/_func/result/circular/from_input_tail
execute if score #value.list.index.keep_recur cu-internal matches 2.. run data remove storage cu:io value.list.index.Input[-1]
execute if score #value.list.index.keep_recur cu-internal matches 2.. run scoreboard players remove #value.list.index.max_index cu-internal 1

execute if score #value.list.index.keep_recur cu-internal matches 0 run function cu:value/list/index/_func/result/main

execute if score #value.list.index.keep_recur cu-internal matches 1.. if data storage cu:io value.list.index.Input[0] run function cu:value/list/index/_func/index
