scoreboard players set #data.list.index.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input or error.
#  (Check "Option.result_method" down below.)
data remove storage cu:io data.list.index.Result
execute unless data storage cu:io data.list.index.Input[0] run return run function cu:data/list/index/_return_fail
# Option.start
#  (Suppress "Option.circular" if the index is the same as "Option.end".)
#  0..2147483638   : Specifies *index* as the start (include).
#                     0 => [(first),...,...]
#                     1 => [...,(second),...]
#  -2147483639..-1 : Specifies *number* from the last as the start (include).
#                     -1 => [...,...,(last)]
#                     -2 => [...,(second to last),...,]
execute unless score #data.list.index.Option.start cu-io matches -2147483639..2147483638 run scoreboard players set #data.list.index.Option.start cu-io 0
# Option.end
#  (Suppress "Option.circular" if the index is the same as "Option.start".)
#  0..2147483638   : Specifies *index* as the end (include).
#  -2147483639..-1 : Specifies *number* from the last as the end (include).
execute unless score #data.list.index.Option.end cu-io matches -2147483639..2147483638 run scoreboard players operation #data.list.index.Option.end cu-io = #data.list.index.Option.start cu-io
# Option.arrange
#  0 : Do not apply this option.
#  1 : Arranges the result from start to end.
#       [...,->,...] => [(start),...,(end)]
#       [...,<-,...] => [(start),...,(end)]
execute unless score #data.list.index.Option.arrange cu-io matches 0..1 run scoreboard players set #data.list.index.Option.arrange cu-io 0
# Option.circular
#  (Suppressed when "Option.start" and "Option.end" are the same index.)
#  0 : Do not apply this option.
#       [...,(start)->,...,->(end),...]
#       [...,(end)<-,...,<-(start),...]
#  1 : Results from the boundary to the start/end, rather than point to point.
#       [...,<-(start),...,(end)<-,...] => [(head),...,(start),(end),...,(tail)]
#       [...,->(end),...,(start)->,...] => [(head),...,(end),(start),...,(tail)]
#       (Can work with "Option.arrange".)
#       [...,<-(start),...,(end)<-,...] => [(start),...,(head),(tail),...,(end)]
#       [...,->(end),...,(start)->,...] => [(start),...,(tail),(head),...,(end)]
#  2 : Only if the end is before the start.
#       [...,(end),...,(start),...] => (applies circular)
#       [...,(start),...,(end),...] => (do not apply circular)
#  3 : Only if the start is before the end.
#       [...,(start),...,(end),...] => (applies circular)
#       [...,(end),...,(start),...] => (do not apply circular)
execute unless score #data.list.index.Option.circular cu-io matches 0..3 run scoreboard players set #data.list.index.Option.circular cu-io 0
# Option.result_method
#  0 : Resulting in a list of item(s).
#       [...]
#  1 : Resulting in a compound with two lists: "index" and "remnant".
#       {index:[...],remnant:[[...],...]}
#  2 : Same as 1, but combines "remnant" into a list, and is not affected by other options.
#       {index:[...],remnant:[...]}
execute unless score #data.list.index.Option.result_method cu-io matches 0..2 run scoreboard players set #data.list.index.Option.result_method cu-io 0

scoreboard players set #data.list.index.FUNCTION_STAGE cu-io 1
# normalizes start and end
execute store result score #data.list.index.max_index cu-internal store result score #1 temp store result score #2 temp run data get storage cu:io data.list.index.Input
scoreboard players remove #data.list.index.max_index cu-internal 1
execute if score #data.list.index.Option.start cu-io matches ..-1 store result score #data.list.index.Option.start cu-io run scoreboard players operation #1 temp += #data.list.index.Option.start cu-io
execute if score #data.list.index.Option.end cu-io matches ..-1 store result score #data.list.index.Option.end cu-io run scoreboard players operation #2 temp += #data.list.index.Option.end cu-io
scoreboard players operation #data.list.index.Option.start cu-io < #data.list.index.max_index cu-internal
execute if score #data.list.index.Option.start cu-io matches ..-1 run scoreboard players set #data.list.index.Option.start cu-io 0
scoreboard players operation #data.list.index.Option.end cu-io < #data.list.index.max_index cu-internal
execute if score #data.list.index.Option.end cu-io matches ..-1 run scoreboard players set #data.list.index.Option.end cu-io 0
# set up head and tail
data modify storage cu:internal data.list.index.head set value []
data modify storage cu:internal data.list.index.tail set value []
scoreboard players operation #data.list.index.head_countdown cu-internal = #data.list.index.Option.start cu-io
scoreboard players operation #data.list.index.head_countdown cu-internal < #data.list.index.Option.end cu-io
scoreboard players operation #data.list.index.tail_target cu-internal = #data.list.index.Option.start cu-io
scoreboard players operation #data.list.index.tail_target cu-internal > #data.list.index.Option.end cu-io
# normalizes circular
execute if score #data.list.index.Option.start cu-io = #data.list.index.Option.end cu-io run scoreboard players set #data.list.index.Option.circular cu-io 0
scoreboard players set #1 temp 0
execute if score #data.list.index.Option.circular cu-io matches 2 if score #data.list.index.Option.end cu-io < #data.list.index.Option.start cu-io run scoreboard players set #1 temp 1
execute if score #data.list.index.Option.circular cu-io matches 3 if score #data.list.index.Option.start cu-io < #data.list.index.Option.end cu-io run scoreboard players set #1 temp 1
execute if score #data.list.index.Option.circular cu-io matches 2.. run scoreboard players operation #data.list.index.Option.circular cu-io = #1 temp
# correct the range
execute if score #data.list.index.Option.circular cu-io matches 1 run scoreboard players add #data.list.index.head_countdown cu-internal 1
execute if score #data.list.index.Option.circular cu-io matches 1 run scoreboard players remove #data.list.index.tail_target cu-internal 1
# set up reverse_direction
scoreboard players set #data.list.index.reverse_direction cu-internal 0
execute if score #data.list.index.Option.arrange cu-io matches 1 if score #data.list.index.Option.circular cu-io matches 0 if score #data.list.index.Option.end cu-io < #data.list.index.Option.start cu-io run scoreboard players set #data.list.index.reverse_direction cu-internal 1
execute if score #data.list.index.Option.arrange cu-io matches 1 if score #data.list.index.Option.circular cu-io matches 1 if score #data.list.index.Option.start cu-io < #data.list.index.Option.end cu-io run scoreboard players set #data.list.index.reverse_direction cu-internal 2
# set up reverse_combination
scoreboard players set #data.list.index.reverse_combination cu-internal 0
execute if score #data.list.index.Option.arrange cu-io matches 1 if score #data.list.index.Option.circular cu-io matches 1 if score #data.list.index.Option.end cu-io < #data.list.index.Option.start cu-io run scoreboard players set #data.list.index.reverse_combination cu-internal 1
# set up pick
scoreboard players set #data.list.index.pick cu-internal 0
execute if score #data.list.index.Option.start cu-io = #data.list.index.Option.end cu-io if score #data.list.index.Option.result_method cu-io matches 0 run scoreboard players set #data.list.index.pick cu-internal 1

scoreboard players set #data.list.index.FUNCTION_STAGE cu-io 2
function cu:data/list/index/_func/index/main

scoreboard players set #data.list.index.FUNCTION_STAGE cu-io -1
function cu:data/list/index/_reset_function

return run execute if data storage cu:io data.list.index.Result