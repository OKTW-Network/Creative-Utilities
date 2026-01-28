execute unless score #data.list.index.reverse_direction cu-internal matches 2 run data modify storage cu:internal data.list.index.head append from storage cu:io data.list.index.Input[0]
execute if score #data.list.index.reverse_direction cu-internal matches 2 run data modify storage cu:internal data.list.index.head prepend from storage cu:io data.list.index.Input[0]
data remove storage cu:io data.list.index.Input[0]
scoreboard players remove #data.list.index.head_countdown cu-internal 1
scoreboard players remove #data.list.index.tail_target cu-internal 1
scoreboard players remove #data.list.index.max_index cu-internal 1
execute if score #data.list.index.pick cu-internal matches 1 if score #data.list.index.head_countdown cu-internal matches 0 run return run function cu:data/list/index/_func/index/pick_from_head
execute unless score #data.list.index.head_countdown cu-internal matches 0 run scoreboard players set #data.list.index.keep_recur cu-internal 1