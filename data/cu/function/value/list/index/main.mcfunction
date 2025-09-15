scoreboard players set #value.list.index.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input or error
#  []     : The result
data remove storage cu:io value.list.index.Result
execute unless data storage cu:io value.list.index.Input[0] run return run function cu:value/list/index/_return_fail
# Option.start
#  0..2147483638   : Specifies *index* as the start (include).
#  -2147483639..-1 : Specifies *number* from the last as the start (include).
execute unless score #value.list.index.Option.start cu-io matches -2147483639..2147483638 run scoreboard players set #value.list.index.Option.start cu-io 0
# Option.end
#  0..2147483638   : Specifies *index* as the end (include).
#  -2147483639..-1 : Specifies *number* from the last as the end (include).
execute unless score #value.list.index.Option.end cu-io matches -2147483639..2147483638 run scoreboard players operation #value.list.index.Option.end cu-io = #value.list.index.Option.start cu-io
# Option.arrange
#  0 : Do not apply this option.
#  1 : Arranges the result from start to end.
execute unless score #value.list.index.Option.arrange cu-io matches 0..1 run scoreboard players set #value.list.index.Option.arrange cu-io 0
# Option.circular
#  0 : Do not apply this option.
#  1 : Results from the boundary to the start/end point, rather than point to point.
#  2 : Only if the start is greater than the end.
#  3 : Only if the end is greater than the start.
execute unless score #value.list.index.Option.circular cu-io matches 0..3 run scoreboard players set #value.list.index.Option.circular cu-io 0

scoreboard players set #value.list.index.FUNCTION_STAGE cu-io 1
execute store result score #value.list.index.max_index cu-internal store result score #1 temp store result score #2 temp run data get storage cu:io value.list.index.Input
scoreboard players remove #value.list.index.max_index cu-internal 1
execute if score #value.list.index.Option.start cu-io matches ..-1 store result score #value.list.index.Option.start cu-io run scoreboard players operation #1 temp -= #value.list.index.Option.start cu-io
execute if score #value.list.index.Option.end cu-io matches ..-1 store result score #value.list.index.Option.end cu-io run scoreboard players operation #2 temp -= #value.list.index.Option.end cu-io
scoreboard players operation #value.list.index.Option.start cu-io < #value.list.index.max_index cu-internal
execute if score #value.list.index.Option.start cu-io matches ..-1 run scoreboard players set #value.list.index.Option.start cu-io 0
scoreboard players operation #value.list.index.Option.end cu-io < #value.list.index.max_index cu-internal
execute if score #value.list.index.Option.end cu-io matches ..-1 run scoreboard players set #value.list.index.Option.end cu-io 0
scoreboard players operation #value.list.index.head_countdown cu-internal = #value.list.index.Option.start cu-io
scoreboard players operation #value.list.index.head_countdown cu-internal < #value.list.index.Option.end cu-io
scoreboard players operation #value.list.index.tail_countdown cu-internal = #value.list.index.Option.start cu-io
scoreboard players operation #value.list.index.tail_countdown cu-internal > #value.list.index.Option.end cu-io
scoreboard players set #1 temp 0
execute if score #value.list.index.Option.circular cu-io matches 2 if score #value.list.index.Option.start cu-io > #value.list.index.Option.end cu-io run scoreboard players set #1 temp 1
execute if score #value.list.index.Option.circular cu-io matches 3 if score #value.list.index.Option.end cu-io > #value.list.index.Option.start cu-io run scoreboard players set #1 temp 1
execute if score #value.list.index.Option.circular cu-io matches 2.. run scoreboard players operation #value.list.index.Option.circular cu-io = #1 temp
function cu:value/list/index/_func/index

scoreboard players set #value.list.index.FUNCTION_STAGE cu-io -1
function cu:value/list/index/_reset_function

return run execute if data storage cu:io value.list.index.Result
